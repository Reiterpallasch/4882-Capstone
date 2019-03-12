# == Schema Information
#
# Table name: vets
#
#  id           :integer          not null, primary key
#  address      :string
#  businessName :string
#  city         :string
#  email        :string
#  name         :string
#  phone        :integer
#  state        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class VetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
