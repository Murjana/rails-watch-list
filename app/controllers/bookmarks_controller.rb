class BookmarksController < ApplicationController


  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was successfully saved.'
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:name, :movie_id, :list_id)
  end
end
