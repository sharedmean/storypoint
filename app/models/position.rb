# frozen_string_literal: true

# Position
class Position < ApplicationRecord
  MAX_POSITION = 4
  has_one :book

  validates :row, uniqueness: { scope: :position }, presence: true
  validates :position, presence: true, numericality: { less_than_or_equal_to: MAX_POSITION }
end
