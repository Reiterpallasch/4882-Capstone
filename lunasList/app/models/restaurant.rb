# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  additional :text
#  address    :string
#  name       :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    validates :type, presence: true
end
