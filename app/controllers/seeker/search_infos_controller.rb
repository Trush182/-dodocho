class Seeker::SearchInfosController < ApplicationController
  def edit
  end

  def update
    session[:nights_count_chosen] = params[:search_infos][:nights_count]

    redirect_to rooms_path(address: params[:search_infos][:address])
  end
end
