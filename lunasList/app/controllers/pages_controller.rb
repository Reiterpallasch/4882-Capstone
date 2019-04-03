class PagesController < ApplicationController
    def home
	@events = Event.order('time DESC').limit(3)
    end
end
