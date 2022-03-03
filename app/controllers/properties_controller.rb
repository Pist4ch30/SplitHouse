class PropertiesController < ApplicationController
  def new
    @property = Property.new
  end

  def create
    @property = Property.create(params_property)
    if Property.valid?
      redirect_to dashboard_path
    else
      flash[:error] = Property.errors.full_messages
      redirect_to dashboard_path
    end
  end

  def update
  end

  def destroy
  end

  def index
    @properties = Property.all
    @markers = @properties.geocoded.map do |property|
      {
        lat: property.latitude,
        lng: property.longitude,
        info_window: render_to_string(partial: "info_window", locals: { property: property }),
        image_url: helpers.asset_url("house.png")
      }
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  private

  def params_property
    params.require(:property).permit(:title, :price_part, :home_size, :nbr_room, :nbr_bathroom, :address, :detail, :pool, :garden, :parking, :garage, :summer_kitchen)
  end
end
