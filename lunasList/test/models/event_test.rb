# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  approved    :boolean
#  city        :string
#  description :string
#  location    :string
#  state       :string
#  time        :datetime
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
