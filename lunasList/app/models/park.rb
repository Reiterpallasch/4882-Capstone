# == Schema Information
#
# Table name: parks
#
#  id         :integer          not null, primary key
#  approved   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Park < ApplicationRecord
end
