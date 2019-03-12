# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  age        :integer
#  gender     :string
#  name       :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pet < ApplicationRecord
end
