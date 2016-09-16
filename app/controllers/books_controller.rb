class BooksController < ApplicationController
  def index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      redirect_to new_book_path
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :description, :author)
  end
end