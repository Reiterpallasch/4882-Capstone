class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    begin
      @event = Event.find(params[:id])
    rescue
      redirect_to event_url(@event), alert: "Error: event not found"
    end

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:title,:description, :location, :city, :state, :time))
    if @event.save
      redirect_to event_url(@event), notice: 'Event was successfully created'
    else
      flash.now[:alert] = 'Error! Unable to create new event'
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(params.require(:event).permit(:title,:description, :location, :city, :state, :time))
      redirect_to event_url(@event), notice: 'Event was successfully updated'
    else
      flash.now[:alert] = 'Error! Unable to update event'
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed'
  end

end
