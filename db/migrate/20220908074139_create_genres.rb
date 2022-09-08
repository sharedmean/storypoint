# frozen_string_literal: true

# CreateGenres migration
class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres, &:timestamps
  end
end
