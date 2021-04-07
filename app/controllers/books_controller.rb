class BooksController < ApplicationController
  def index
    @book=Book.all
  end

  def show
    @book=Book.find(params[:id])
  end

  def new
    @book=Book.new
  end

  def create
    book=Book.find(params[:id])
    book.save
    redirect_to book_path(book.id)
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    book=Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    parms.require(:book).permit(:title, :body)
  end
end
