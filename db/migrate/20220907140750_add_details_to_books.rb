# frozen_string_literal: true

# AddDetailsToBooks migration
class AddDetailsToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :title, :string
    add_column :books, :year_of_release, :integer
    add_column :books, :description, :string
  end
end
