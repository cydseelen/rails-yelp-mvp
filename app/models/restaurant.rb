class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :address, length: { minimum: 1 }
  validates :name, length: { minimum: 1 }
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
