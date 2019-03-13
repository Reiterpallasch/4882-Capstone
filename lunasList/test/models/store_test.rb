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

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
