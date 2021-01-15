class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5),
    message: "Invalid entry. Please choose a value between 0 and 5." }
  validates :content, length: { minimum: 2 }
  validates :content, presence: true
end
