class User < ActiveRecord::Base
  has_secure_password
  has_many :lists, dependent: :destroy
  has_many :comments
  validates :user_name, presence: true, uniqueness: true
  validates :password, length: { minimum: 5 }
end
