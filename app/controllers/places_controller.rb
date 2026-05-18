class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place.name = params[:name]

    if @place.save
      redirect_to "/places"
    else
      render :new
    end
  end

end