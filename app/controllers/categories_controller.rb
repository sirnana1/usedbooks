class CategoriesController < ApplicationController

  def new
    @page_title = 'Add new Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Category Created Successfully!"
      redirect_to categories_path
    else
      render 'new'
    end
  end

  #The show action
  def show
    @category = Category.find(params[:id])
    @categories = Category.all.sort
    @books = @category.books.sort

  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    flash[:success] = 'Category Updated'
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:success] = 'Category Removed'
      redirect_to categories_path
    else
      render 'new'
  end
end

  def index
    @categories = Category.all
  end

  private
      def category_params
        params.require(:category).permit(:name)
 end
end
