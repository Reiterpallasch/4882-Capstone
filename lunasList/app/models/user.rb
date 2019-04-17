# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  address                :string
#  admin                  :boolean
#  business               :boolean
#  businessName           :string
#  city                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  phone                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  state                  :string
#  zip                    :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, class_name: 'Post', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
  has_many :topics, class_name: 'Topic', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
  has_many :pets, class_name: 'Pet', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
has_many :pictures, class_name: 'Picture', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
  has_one_attached :image
end
