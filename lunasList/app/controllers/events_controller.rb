class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def edit
  end

  def new
  end
end
