# frozen_string_literal: true

# AddDetailsToPositions migration
class AddDetailsToPositions < ActiveRecord::Migration[6.1]
  def change
    add_column :positions, :row, :integer
    add_column :positions, :position, :integer
  end
end
