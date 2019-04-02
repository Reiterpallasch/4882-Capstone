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
def self.search(search)
  if search
    self.where(city: search)
  else
    Vet.all
  end
end
end
