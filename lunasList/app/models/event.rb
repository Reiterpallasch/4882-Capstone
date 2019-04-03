# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  approved    :boolean
#  description :string
#  location    :string
#  time        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
    validates :location, presence: true
    validates :description, presence: true
    validates :time, presence: true
end
