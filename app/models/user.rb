class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :songs, dependent: :destroy
  has_many :comments
end
