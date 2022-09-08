# frozen_string_literal: true

# books controller
class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :genres, :position).all
    @positions = Position.includes(:book).all
  end

  # if you wanna check all actions from resources: 'rake routes'
  def new
    @book = Book.new
    @genres = Genre.all
  end

  def show
    @book = Book.find(params[:id])
    @genres = Genre.all
  end

  def edit
    @book = Book.find(params[:id])
    @genres = Genre.all
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to book_path(@book) # calls 'show'
    else
      render :edit # rerender the current page
    end
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book) # calls 'show'
    else
      render :new # rerender the current page
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to home_path
  end

  private

  def book_params
    params[:book][:genre_ids] = (params[:book][:genre_ids] || {}).values.map(&:to_i)
    params.require(:book).permit(:title, :year_of_release, :description, :author_id, :position_id, genre_ids: [])
  end
end
