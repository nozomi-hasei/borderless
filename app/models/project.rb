class Project < ApplicationRecord
  validates :main_title,      presence: true
  validates :start_date,      presence: true
  validates :finish_date,     presence: true
  validates :department,      presence: true
  validates :category,        presence: true
  validates :project_memo,    presence: true
  validates :image,           presence: :true
  
  belongs_to :user
  has_many :comments
  has_one_attached :image
end
