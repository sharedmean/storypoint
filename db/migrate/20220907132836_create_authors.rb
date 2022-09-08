# frozen_string_literal: true

# CreateAuthors migration
class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors, &:timestamps
  end
end
