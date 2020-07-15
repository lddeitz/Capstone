class Comment < ApplicationRecord
  has_many :comment_tags
  has_many :tags, through: :comment_tags

  belongs_to :song

  belongs_to :user, optional: true
end
