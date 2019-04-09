# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  age        :integer
#  breed      :string
#  gender     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_pets_on_user_id  (user_id)
#

require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
