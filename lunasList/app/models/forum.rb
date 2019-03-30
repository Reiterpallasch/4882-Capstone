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
        topic = Topic.first(:order => 'last_post_at DESC', :conditions => ['forum_id = ?', self.id])
        return topic
    end
    has_many :topics, :dependent => :destroy
end
