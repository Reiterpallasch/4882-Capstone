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

class Topic < ApplicationRecord
    belongs_to :forum
    belongs_to :user
    has_many :posts, :dependent => :destroy
end
