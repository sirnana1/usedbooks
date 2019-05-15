#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#

class BooksController < ApplicationController

  def new
    @page_title = 'Add Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book Created Successfully!"
      redirect_to books_path
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
    @books = Book.all
    @categories = Category.all
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    flash[:notice] = 'Book Updated'
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
    flash[:notice] = 'Book Revmoved'
    redirect_to books_path
  end
  end

  def index
    @books = Book.all
    @categories = Category.all

  end

  private
      def book_params
        params.require(:book).permit(:title, :category_id, :author_id,:publisher_id,
          :isbn, :price, :format, :buy, :trade, :description, :pages, :year)
      end
end
