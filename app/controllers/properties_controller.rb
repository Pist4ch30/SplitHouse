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
    @search_param = params["search"]
    if @search_param.present?
      if !@search_param["nbr_room"].empty?
        @properties = @properties.where(nbr_room: @search_param["nbr_room"].to_i)
      end
      if !@search_param["budget"].empty?
        min = @search_param["budget"].split(" € - ").first.to_i
        max = @search_param["budget"].split(" € - ").second.to_i
        @properties = @properties.where("(price_part >= ?) AND (price_part <= ?)", min, max)
        end
    end

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
end
