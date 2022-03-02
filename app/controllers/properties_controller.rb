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
  end
end
