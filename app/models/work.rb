class Work < ApplicationRecord
  has_many :votes
  validates :category, presence: true
  validates :title, presence: true
  validates :creator, presence: true
  validates :publication_year, presence: true
  # validates :description, presence: true

  # validates :name, presence: true, length: { minimum: 2 }
  # validates :phone_num, presence: true
end
