# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  description :string
#  location    :string
#  time        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
    validates :location, presence: true
    validate :description, presence: true
    validate :time, presence: true
end
