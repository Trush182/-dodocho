class RoomsController < ApplicationController
  def index
    # ! Ici nous avons accès à params[:address], qui nous est fourni par l'utilisateur sur l'écran précédent
    # search_infos/edit
    @rooms = Room.near(params[:address], 10)
    @address_coordinates = Geocoder.coordinates(params[:address])
  end

  def show
    @room = Room.find(params[:id])
    @rooms = Room.near(params[:address], 10)
    @address_coordinates = [params[:lat], params[:long]]
  end
end
