class BookmarksController < ApplicationController
    before_action :check_for_login


  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create bookmark_params
    redirect_to root_path
  end

  def edit
    @bookmark = Bookmark.find params[:id]
  end

  def update
    bookmark = Bookmark.find params[:id]
    bookmark.update bookmark_params
    redirect_to category_path
  end

  def destroy
    bookmark = Bookmark.find params[:id]
    bookmark.destroy
    redirect_to category_path ##change this to show page later maybe?
  end

  private
    def bookmark_params
      params.require(:bookmark).permit(:name, :url, :category_id)
    end
end
