# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  approved    :boolean
#  city        :string
#  description :string
#  location    :string
#  state       :string
#  time        :datetime
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
    ratyrate_rateable "quality"
    
    validates :location, presence: true
    validates :description, presence: true
    validates :time, presence: true
    validates :title, presence: true
def self.search(searchcity)
  if searchcity
    correct = searchcity.slice(0,1).capitalize + searchcity.slice(1..-1)
    self.where(city: correct)
  else
    Event.all
  end
end
end
