class Comment < ApplicationRecord
  # validates :notes, :song_timestamp, presence: true
  # validates :notes, length: { in: 40...500 }
  
  # validates :author, presence: true if !current_user


  has_many :comment_tags, dependent: :destroy
  has_many :tags, through: :comment_tags, dependent: :destroy

  belongs_to :song

  belongs_to :user, optional: true
end
