class SongsController < ApplicationController
  before_action :set_song!, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def edit
  end

  def show
  end

  def create
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :edit
  end

private
  def set_song!
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
