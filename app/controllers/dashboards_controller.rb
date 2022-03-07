class DashboardsController < ApplicationController

  def dashboard
    @booking            = Booking.new
    # Recupere le status de => Acheteur (Part(s) qui lui appartient)
    @status_buyer       = status_buyer
  end

  private

  # Méthode => Verifi si l'user à des parts dans une ou plusieurs property's
  def status_buyer
    parts = Part.where(user_id: current_user.id).order(created_at: :desc)
    data_out = []

    if parts
      parts.each do |part|
        if part.status == "approved"
          # Invests (Montant total investissement)=> prix_part * nbr_part
          invest = part.property[:price_part] * part.nbr_part

          # Créer un hash => structure données {parts: (Nombre de part sur la propriété),
          #                                     property_details: (Données sur la propiété)}
          data_buyer = {  parts: part.nbr_part.to_s,
                          property_details: { title: part.property[:title],
                                              invest: invest,
                                              home_size: part.property[:home_size],
                                              address: part.property[:address],
                                              detail: part.property[:detail],
                                              property: part.property },
                          last_booking:  last_booking(part.property_id),
                          stat_booking:  stat_booking_user(part.property_id) }
          data_out.push(data_buyer)
        end
      end
    else
      data_out = nil
    end
    return data_out
  end

  # Recupere le dernier booking de l'user sur une property
  def last_booking(property_id)
    booking  = Booking.where(user_id: current_user.id, property_id: property_id).order(created_at: :desc).first
    if booking
      return {start_date: booking.start_date, finish_date: booking.finish_date}
    else
      return nil
    end
  end

  # Recupere les jours restants etc ... booking
  def stat_booking_user(property_id)
      part = Part.where(user_id: current_user.id, property_id: property_id).order(created_at: :desc)
      day_allowed_user = part[0][:days_allowed]
      # Recupere tous les bookings de l'user => par propriété
      bookings = Booking.where(user_id: current_user.id, property_id: property_id).order(created_at: :desc)
      # Recupere & compte les durées de séjours => par propriété
      duration = 0
      bookings.each do |booking|
        duration += booking[:duration]
      end
      # Calcule les jours restants par property
      day_restant = day_allowed_user - duration
      if day_restant <= 0
        data_out    = { property_id: property_id,
                      day_restant: 0,
                      day_utilise: day_allowed_user,
                      day_allowed: day_allowed_user}
      else
        data_out    = { property_id: property_id,
                      day_restant: day_restant,
                      day_utilise: duration,
                      day_allowed: day_allowed_user}
      end
  end
end
