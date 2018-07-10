class SongsController < ApplicationController

  def edit
  end

private
  def set_song
    @song = Song.find(params[:id])
  end
end
