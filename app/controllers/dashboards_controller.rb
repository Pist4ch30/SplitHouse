class DashboardsController < ApplicationController

  def dashboard
    # Recupere le status de => Acheteur (Part(s) qui lui appartient)
    @status_buyer = status_buyer
    @booking      = Booking.new
  end

  private

  # Méthode => Verifi si l'user à des parts dans une ou plusieurs property's
  def status_buyer
    parts = Part.where(user_id: current_user.id).order(created_at: :desc)
    data_out = []

    if parts
      parts.each do |part|
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
                        last_booking:  last_booking(part.property_id) }
        data_out.push(data_buyer)
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
end
