# frozen_string_literal: true

# ChangeColumn migration
class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    add_index :positions, %i[row position], unique: true
  end
end
