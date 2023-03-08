class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { greater_than: -1, less_than: 6, only_integer: true }
  validates :content, presence: true
end
