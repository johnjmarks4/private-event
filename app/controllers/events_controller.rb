class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.creator_id = session[:user_id]
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