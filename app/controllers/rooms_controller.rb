class RoomsController < ApplicationController
  def index
    # ! Ici nous avons accès à params[:address], qui nous est fourni par l'utilisateur sur l'écran précédent
    # search_infos/edit
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end
end
