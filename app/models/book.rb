# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :position
  belongs_to :author
  has_and_belongs_to_many :genres

  validates_uniqueness_of :position
end
