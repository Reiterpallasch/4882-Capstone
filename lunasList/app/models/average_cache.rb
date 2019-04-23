# == Schema Information
#
# Table name: average_caches
#
#  id            :integer          not null, primary key
#  avg           :float            not null
#  rateable_type :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  rateable_id   :integer
#  rater_id      :integer
#
# Indexes
#
#  index_average_caches_on_rateable_type_and_rateable_id  (rateable_type,rateable_id)
#  index_average_caches_on_rater_id                       (rater_id)
#

class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "User"
  belongs_to :rateable, :polymorphic => true
end
