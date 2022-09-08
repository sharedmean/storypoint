# frozen_string_literal: true

# ChangeColumnNull migration
class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :positions, :book_id, true
  end
end
