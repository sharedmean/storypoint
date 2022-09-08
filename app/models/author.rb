# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :year_of_birth, presence: true
  validates :biography, presence: true
end
