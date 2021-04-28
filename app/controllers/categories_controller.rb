class CategoriesController < ApplicationController
  before_action :check_for_login

  def index
    @categories = Category.all.where(:user_id => @current_user.id)
  end

  def show
    @category = Category.find params[:id]
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create category_params
    @current_user.categories << @category
    redirect_to root_path
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    category = Category.find params[:id]
    category.update category_params
    redirect_to root_path
  end

  def destroy
    category = Category.find params[:id]
    bookmarks = category.bookmarks
    raise 'hell'
    @current_user.categories.each do |category|
    default = category.name == 'Unsorted'
    default << bookmarks
    end
    category.destroy
    redirect_to root_path
  end


private
  def category_params
    params.require(:category).permit(:name, :sort_option)
  end
end
