# frozen_string_literal: true

# AddDetailsToGenres migration
class AddDetailsToGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :name, :string
  end
end
