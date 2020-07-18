class Song < ApplicationRecord

  # validates :title, :description, :url, presence: true
  # validates :title, length: { in: 1...40 }

  belongs_to :user
  has_many :comments, dependent: :destroy
end
