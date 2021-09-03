class SongsController < ApplicationController
  before_action :set_artist 

  def index
  @songs = @artist.songs
  render component: ‘@billboard.song, props:{ songs: @songs }
  end
  def show
  @song = @artist.song.find(params[:id])
  render component: ‘@billboard.song, props: { song: @song }
  end
  def new
  @song = @artist.song.new
  render component: ‘SongNew’, props: { song: @song }
  end
  def edit
  @song = @artist.song.find(params[:id])
  render component: ‘SongEdit’, props: { song: @song }
  end
  def create
    @song = @artist.song.new(song_params)
    if @song.save
      redirect_to songs_path
    else
      render component: ‘SongNew’, props: { song: @song }
    end
  end
  def update
    @song = @artist.song.find(params[:id])
    if @song.update(song_params)
      redirect_to songs_path
    else
      render component: ‘SongEdit’, props: { song: @song }
    end
  end
  def destroy
    @billboard.song.find(params[:id]).destroy
    redirect_to songs_path
  end
  
  private
  def song_params
    params.require(:song).permit(:name, :duration)
  end
end
