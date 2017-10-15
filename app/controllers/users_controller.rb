class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/users/show'
    else
      redirect_to '/users/new'
    end
  end

  def show
    @user = User.find(session[:user_id])
    @events = @user.created_events
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
