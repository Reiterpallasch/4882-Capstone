# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  additional :text
#  address    :string
#  approved   :boolean
#  city       :string
#  name       :string
#  state      :string
#  style      :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ApplicationRecord
def self.search(searchcity)
  if searchcity
    if searchcity != ""
        correct = searchcity.slice(0,1).capitalize + searchcity.slice(1..-1)
        self.where(city: correct)
    else
        Restaurant.all
    end
  else
    Restaurant.all
  end
end
end
