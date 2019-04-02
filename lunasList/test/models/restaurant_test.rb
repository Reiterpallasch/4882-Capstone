# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  additional :text
#  address    :string
#  approved   :boolean
#  city       :string
#  name       :string
#  state      :string
#  style      :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
