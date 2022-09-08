# frozen_string_literal: true

# CreatePositions migration
class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions, &:timestamps
  end
end
