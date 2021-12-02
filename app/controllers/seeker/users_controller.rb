class Seeker::UsersController < ApplicationController
  def edit
    @user = current_user

  end

  def update
    @profile.update(summary: params[:user][:summary], address: params[:room][:address], housing_types: params[:room][:housing_types])

    redirect_to room_path
  end
end
