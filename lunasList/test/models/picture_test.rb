# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  picName    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_pictures_on_user_id  (user_id)
#

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
