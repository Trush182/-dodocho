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
    @room = Room.find(params[:id])
    @room.update(room_params)
    redirect_to room_path
  end

  # :has_books, :has_internet, :has_tv, :has_personal_bathroom

  private

  def room_params
    params.require(:room).permit(:id, :summary, :address, :housing_types, :has_books, :has_internet, :has_tv, :has_personal_bathroom)
  end
end
