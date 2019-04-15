# == Schema Information
#
# Table name: parks
#
#  id         :integer          not null, primary key
#  address    :string
#  approved   :boolean
#  city       :string
#  leash      :string
#  name       :string
#  size       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Park < ApplicationRecord
def self.search(searchcity)
  if searchcity
    if searchcity != ""
        correct = searchcity.slice(0,1).capitalize + searchcity.slice(1..-1)
        self.where(city: correct)
    else
        Park.all
    end
  else
    Park.all
  end
end
end
