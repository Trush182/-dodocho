class Seeker::UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to rooms_path
  end

  private

  def user_params
    params.require(:user).permit(:services => [])
  end
end
