class Seekers::ProfilesController < ApplicationController
  def edit
    @profile = @seeker.find(params[:seeker_id])

  end

  def update

  end
end
