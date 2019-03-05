class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def edit
  end

  def new
      redirect_to index_event_url(@event), alert: "Error: event not found"
end
  def destroy
    @event = event.find(params[:id])
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed'
  end
  
end
