class SongsController < ApplicationController

def show
  @song = Song.find(params[:id])
end

def new
end

def create
  @song = Song.new(song_params)

  @song.save
  redirect_to @song
end

private
  def song_params
    params.require(:song).permit(:title, :key, :setting, :notes)
  end

end

