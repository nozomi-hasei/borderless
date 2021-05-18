class Tag < ApplicationRecord
  validates :text_tag, :text_memo, presence: true
end
