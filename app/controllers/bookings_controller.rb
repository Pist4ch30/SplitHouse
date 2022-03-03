class BookingsController < ApplicationController

  def new
    @property       = Property.find(params[:property_id])
    @booking        = Booking.new
    @bookings       = @property.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.finish_date
      }
    end
  end

  def create
    @property = Property.find(params[:property_id])
    @booking  = Booking.new(params_booking)
    @booking.user = current_user
    @booking.property = @property
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path
    end
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :finish_date)
  end
end
