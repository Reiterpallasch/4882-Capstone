# == Schema Information
#
# Table name: forums
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Forum < ApplicationRecord
    has_many :topics, :dependent => :destroy
end
