class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end



end
