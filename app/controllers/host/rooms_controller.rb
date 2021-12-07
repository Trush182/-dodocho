class Host::RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.host = current_user
    @room.save!

    redirect_to host_root_path
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room.update(summary: params[:room][:summary], address: params[:room][:address], housing_types: params[:room][:housing_types])

    redirect_to room_path
  end

  private

  def room_params
    params.require(:room).permit(:id, :summary, :address, :housing_types)
  end
end
