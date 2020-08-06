class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  # validates :artist_name, length: { in: 2..20 }
  # validates :password, length: { in: 6..20 }
  
  has_many :songs, dependent: :destroy
  has_many :comments
end
