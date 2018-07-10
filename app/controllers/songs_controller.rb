class SongsController < ApplicationController
  before_action :set_song!, only: [:show, :edit, :update, :destroy]
  def edit
  end

private
  def set_song!
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
