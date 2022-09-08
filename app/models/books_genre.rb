# frozen_string_literal: true

class BooksGenre < ApplicationRecord
  belongs_to :book_id
  belongs_to :genre_id
end
