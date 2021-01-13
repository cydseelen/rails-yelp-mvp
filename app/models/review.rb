class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :content, presence: true
end

# numericality: { only_integer: true }
# :inclusion => 0..5,
