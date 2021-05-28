class Comment < ApplicationRecord
  validates :text_comment, presence: true

  belongs_to :project
  belongs_to :user
end
