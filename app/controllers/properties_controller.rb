class PropertiesController < ApplicationController
  def new
  end

  def create
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

  def favorite
    @property = Property.find(params[:id])
    current_user.favorite(@property)
    redirect_to property_path(@property)
  end

  def unfavorite
    @property = Property.find(params[:id])
    current_user.unfavorite(@property)
    redirect_to property_path(@property)
  end
end
