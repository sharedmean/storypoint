# frozen_string_literal: true

# CreateBooksGenres migration
class CreateBooksGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :books_genres do |t|
      t.references :book, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
    end
  end
end
