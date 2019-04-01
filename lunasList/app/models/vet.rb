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
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
