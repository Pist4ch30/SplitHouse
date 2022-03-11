class PartsController < ApplicationController
  def new
  end

  def create
    @property = Property.find(params[:property_id])
    @part = Part.new(property: @property)
    @part.user = current_user
    @part.nbr_part = 1
    @part.status = "approved"
    @part.total_amount = @property.price_part
    if @part.save
      flash[:notice] = "Votre demande a bien été prise en compte. Nous allons vous recontacter."
      redirect_to root_path
    else
      redirect_to property_path(@property)
    end
  end

  def show
  end

  def destroy
  end
end
