class Seeker::HousingRequestsController < ApplicationController
  def index
    @requests = current_user.requests.includes(:room).order(created_at: :desc)
  end

  def create
    current_time = Time.now
    nights_count_requested = session[:nights_count_chosen]

    limit_time = Time.now.change(hour: HousingRequest::HOUR_BEFORE_POSTPONING_REQUESTS_TO_NEXT_DAY, min: 0)
    current_day_midnight = Time.now.tomorrow.beginning_of_day

    if current_time <= limit_time
      start_date = current_time.beginning_of_day + 19.hours
    elsif limit_time < current_time && current_time < current_day_midnight
      start_date = current_time.beginning_of_day + 1.day + 19.hours
    else
      start_date = current_time.beginning_of_day + 19.hours
    end

    end_date = (start_date + nights_count_requested.to_i.day).beginning_of_day + 12.hours

    @request = HousingRequest.new(start_date: start_date, end_date: end_date)
    @room = Room.find(params[:room_id])

    @request.room = @room
    @request.seeker = current_user
    @request.pending!

    if @request.save
      redirect_to seeker_housing_requests_path
    else
      render 'rooms/show'
    end
  end

  def show
    @room_id_of_request = HousingRequest.find(params[:id]).room_id
    @room = Room.find(@room_id_of_request)
    # render 'rooms/room'
  end
end
