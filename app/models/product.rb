# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, :description, :image, presence: true
  validates :title, uniqueness: true
  validates :image, allow_blank: true, format: {
    with: %r{\.gif|jpg|png}i,
    message: 'must be a URL for GIF, JPG, PNG image.'
  }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
