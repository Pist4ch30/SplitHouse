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
  end

  def show
  end

  private

  def params_property
    params.require(:property).permit(:title, :price_part, :home_size, :nbr_room, :nbr_bathroom, :address, :detail, :pool, :garden, :parking, :garage, :summer_kitchen)
  end
end
