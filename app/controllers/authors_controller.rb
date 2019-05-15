#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#

class AuthorsController < ApplicationController

  def new
    @page_title = 'Add new Author'
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      #flash[:success] = "Author Created Successfully!"
      redirect_to books_path
    else
      render 'new'
    end
  end

  def show
    @author = Author.find(params[:id])
    @authors = Author.all
  end


  def update
    @author = Author.find(params[:id])
    if @author.update(author_params)
    flash[:success] = 'Author is Updated'
    redirect_to authors_path
  end
end


  def edit
      @author = Author.find(params[:id])
  end

  def destroy
    @author = Author.find(params[:id])
    if @author.destroy
      flash[:success] = 'Author Removed'
      redirect_to books_path
    end
  end



  def index
      @authors = Author.all
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end
  end
