class RoomsController < ApplicationController
  def index
    # ! Ici nous avons accès à params[:address], qui nous est fourni par l'utilisateur sur l'écran précédent
    # search_infos/edit
    @rooms = Room.near(params[:address], 3)
    @address_coordinates = Geocoder.coordinates(params[:address])
    # Geocoder.coordinates("25 Main St, Cooperstown, NY")
    # Geocoder::Calculations.distance_between([47.858205,2.294359], [40.748433,-73.985655])
  end

  def show
    @room = Room.find(params[:id])
    @rooms = Room.near(params[:address], 3)
    @address_coordinates = Geocoder.coordinates(params[:address])
  end
end

