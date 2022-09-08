# frozen_string_literal: true

# AddBookRefToPositions migration
class AddBookRefToPositions < ActiveRecord::Migration[6.1]
  def change
    add_reference :positions, :book, null: false, foreign_key: true
  end
end
