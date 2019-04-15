# == Schema Information
#
# Table name: vets
#
#  id           :integer          not null, primary key
#  address      :string
#  approved     :boolean
#  businessName :string
#  city         :string
#  email        :string
#  name         :string
#  phone        :integer
#  state        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Vet < ApplicationRecord
def self.search(searchcity)
  if searchcity
    if searchcity != ""
        correct = searchcity.slice(0,1).capitalize + searchcity.slice(1..-1)
        self.where(city: correct)
    else
        Vet.all
    end
  else
    Vet.all
  end
end
end
