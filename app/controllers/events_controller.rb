class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    user = User.find(session[:user_id])
    @event = user.created_events.create(event_params)
    if @event.save!
      redirect_to '/users/show'
    end
  end

  def show
    @event = Event.find(params[:format])
  end

  def event_params
    params.require(:event).permit(:description, :date)
  end
end