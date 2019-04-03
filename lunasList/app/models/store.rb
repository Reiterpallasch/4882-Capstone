# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  address    :string
#  approved   :boolean
#  city       :string
#  phone      :integer
#  state      :string
#  storeName  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Store < ApplicationRecord
def self.search(searchcity)
  if searchcity
    correct = searchcity.slice(0,1).capitalize + searchcity.slice(1..-1)
    self.where(city: correct)
  else
    Store.all
  end
end
end
