class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end

  def show
    user_params
    user = User.find_by(name: params[:user][:name])
    if !user.nil?
      redirect_to '/users/new'
    end
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
