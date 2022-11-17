class BookmarksController < ApplicationController

  def new
    @movie_names_and_id = Movie.all.map { |item| [item.title, item.id] }
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    # @bookmark.movie = Movie.where(title: params[:bookmark][:movie]).first
    if @bookmark.save
      redirect_to list_path(@list)
    else
      @movie_names_and_id = Movie.all.map { |item| [item.title, item.id] }
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
