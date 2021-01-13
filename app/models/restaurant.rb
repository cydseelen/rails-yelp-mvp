class Restaurant < ApplicationRecord
  has_many :reviews

  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
