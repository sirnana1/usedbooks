#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#

class BooksController < ApplicationController
  before_action :logged_in_user, only: [ :update]
  before_action :current_user, only: [ :update]

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
    @books = Book.all.order("title")
    @categories = Category.all.order("ASC")
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    flash[:success] = 'Book Updated'
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
    flash[:success] = 'Book Revmoved'
    redirect_to books_path
  end
  end

  def index
    @books = Book.all.order("title")
    @categories = Category.all.order("ACS")

  end

  private
      def book_params
        params.require(:book).permit(:title, :category_id, :author_id,:publisher_id,
          :isbn, :price, :format, :buy, :trade, :description, :pages, :year)
      end
end
