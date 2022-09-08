# frozen_string_literal: true

# AddDetailsToAuthors migration
class AddDetailsToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :first_name, :string
    add_column :authors, :last_name, :string
    add_column :authors, :patronymic, :string
    add_column :authors, :year_of_birth, :integer
    add_column :authors, :biography, :string
  end
end
