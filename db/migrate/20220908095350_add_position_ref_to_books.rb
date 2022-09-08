# frozen_string_literal: true

# AddPositionRefToBooks migration
class AddPositionRefToBooks < ActiveRecord::Migration[6.1]
  def change
    add_reference :books, :position, null: false, foreign_key: true
  end
end
