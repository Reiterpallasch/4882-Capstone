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

class Pet < ApplicationRecord

    belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :pets

    has_one_attached :photo

end
