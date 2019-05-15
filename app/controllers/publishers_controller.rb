#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class PublishersController < ApplicationController
  def new
    @page_title = " Add new Publisher"
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:success] = "Publisher Created Successfully!"
      redirect_to publishers_path
    else
      render 'new'
    end
  end

  def show
    @publisher = Publisher.find(params[:id])
    @publishers = Publisher.all
  end

  def update
    @publisher = Publisher.find(params[:id])
    @publisher.update(publisher_params)
    flash[:success] = 'Publisher Updated'
    redirect_to publishers_path
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    if @publisher.destroy
    #flash[:success] = 'Book Revmoved'
    redirect_to books_path
  end
end

  def index
      @publishers = Publisher.all
  end

  private
    def publisher_params
      params.require(:publisher).permit(:name)
    end
end
