# frozen_string_literal: true

# CreateBooks migration
class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books, &:timestamps
  end
end
