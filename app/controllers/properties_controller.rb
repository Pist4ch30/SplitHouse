class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

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
      if !@search_param["region"].empty?
        @properties = @properties.where(region: @search_param["region"])
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

  private

  def params_property
    params.require(:property).permit(:title, :price_part, :home_size, :nbr_room, :nbr_bathroom, :address, :detail, :pool, :garden, :parking, :garage, :summer_kitchen)
  end
end
