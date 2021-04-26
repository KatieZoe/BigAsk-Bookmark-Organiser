class CatagoriesController < ApplicationController
  before_action :check_for_login

  def index
    @catagories = Catagory.all
  end

  def new
    @catagory = Catagory.new
  end

  def create
    @catagory = Catagory.create
    catagory_params
    @current_user.catagories << catagory
    redirect_to root_path
  end

  def destroy
  end



private
  def catagory_params
    params.require(:catagory).permit(:name, :sort_option)
  end
end
