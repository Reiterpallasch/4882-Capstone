# == Schema Information
#
# Table name: topics
#
#  id             :integer          not null, primary key
#  last_post_at   :datetime
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  forum_id       :integer
#  last_poster_id :integer
#  user_id        :integer
#

require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
