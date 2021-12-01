class Seekers::ProfilesController < ApplicationController
  def edit
    @profile = @seeker.find(params[:seeker_id])

  end

  def update
    @profile.update(summary: params[:room][:summary], address: params[:room][:address], housing_types: params[:room][:housing_types])

    redirect_to room_path
  end
end
