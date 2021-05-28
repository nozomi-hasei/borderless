class Tag < ApplicationRecord
  validates :text_tag, :text_memo, :color, presence: true
  belongs_to :user

  def self.search(search)
    if search != ""
      Tag.where('text_tag LIKE(?)', "%#{search}%")
    else
      Tag.all
    end
  end
end
