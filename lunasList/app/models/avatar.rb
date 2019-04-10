# == Schema Information
#
# Table name: avatars
#
#  id         :integer          not null, primary key
#  picName    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_avatars_on_user_id  (user_id)
#

class Avatar < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :avatars

    has_one_attached :avatar
end
