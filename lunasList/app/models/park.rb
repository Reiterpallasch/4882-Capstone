# == Schema Information
#
# Table name: parks
#
#  id         :integer          not null, primary key
#  address    :string
#  leash      :string
#  name       :string
#  size       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Park < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    validates :leash, presence: true
end
