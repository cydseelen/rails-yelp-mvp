class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :content, length: { minimum: 2 }
  validates :content, presence: true
end

# :inclusion => 0..5,
