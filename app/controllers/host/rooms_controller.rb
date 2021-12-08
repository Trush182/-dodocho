class Host::RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.host = current_user
    if @room.save
      # renvoyer l'utilisateur vers le formulaire d'edit de la room pour ajouter les équipements
      redirect_to edit_host_offered_equipments_path
    else
      render 'new'
    end
  end

  private

  def room_params
    params.require(:room).permit(:id, :summary, :title, :body, :photos)
  end
end
