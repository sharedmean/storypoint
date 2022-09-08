# frozen_string_literal: true

# authors controller
class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  # if you wanna check all actions from resources: 'rake routes'
  def new
    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to author_path(@author) # calls 'show'
    else
      render :edit # rerender the current page
    end
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to author_path(@author) # calls 'show'
    else
      render :new # rerender the current page
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to home_path
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :patronymic, :year_of_birth, :biography)
  end
end
