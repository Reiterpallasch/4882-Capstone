# == Schema Information
#
# Table name: parks
#
#  id          :integer          not null, primary key
#  address     :string
#  approved    :boolean
#  city        :string
#  gated       :string
#  leash       :string
#  name        :string
#  size        :string
#  state       :string
#  trails      :string
#  waterbodies :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Park < ApplicationRecord
  ratyrate_rateable "quality"
  
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
