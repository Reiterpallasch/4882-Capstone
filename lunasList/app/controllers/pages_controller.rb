class PagesController < ApplicationController
    def home
	@events = Event.order(time: :asc).limit(3)
    end
    def feedingtips
    end
    def etiquettetips
    end
    def caretips
    end
end
