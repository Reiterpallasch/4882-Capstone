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
    def most_recent_post
        topic = Topic.order(created_at: :desc)
        return topic
    end
    has_many :topics
    has_many :posts, :through => :topics
end
