class Host::OfferedEquipmentsController < ApplicationController
  def edit
    # @room = Roomd.find{params[:]}
    @user = current_user
  end

  def update
  end
end
