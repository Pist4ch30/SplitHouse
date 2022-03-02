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
  end

  def show
    @property = Property.find(params[:id])
  end
end
