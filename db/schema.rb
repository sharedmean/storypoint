# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.
# rubocop:disable all

ActiveRecord::Schema.define(version: 20_220_908_101_530) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'authors', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'first_name'
    t.string 'last_name'
    t.string 'patronymic'
    t.integer 'year_of_birth'
    t.string 'biography'
  end

  create_table 'books', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'title'
    t.integer 'year_of_release'
    t.string 'description'
    t.bigint 'author_id', null: false
    t.bigint 'position_id', null: false
    t.index ['author_id'], name: 'index_books_on_author_id'
    t.index ['position_id'], name: 'index_books_on_position_id'
  end

  create_table 'books_genres', force: :cascade do |t|
    t.bigint 'book_id', null: false
    t.bigint 'genre_id', null: false
    t.index ['book_id'], name: 'index_books_genres_on_book_id'
    t.index ['genre_id'], name: 'index_books_genres_on_genre_id'
  end

  create_table 'genres', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'name'
  end

  create_table 'positions', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.integer 'row'
    t.integer 'position'
    t.bigint 'book_id'
    t.index ['book_id'], name: 'index_positions_on_book_id'
    t.index %w[row position], name: 'index_positions_on_row_and_position', unique: true
  end

  add_foreign_key 'books', 'authors'
  add_foreign_key 'books', 'positions'
  add_foreign_key 'books_genres', 'books'
  add_foreign_key 'books_genres', 'genres'
  add_foreign_key 'positions', 'books'
end
