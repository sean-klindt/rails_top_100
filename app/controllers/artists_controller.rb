class ArtistsController < ApplicationController

  before_action :set_billboard
def index
  @artists = @billboard.artist
  render component: ‘@billboard.artist’, props:{ artist: @artists }
  end
  def show
  @artist = @billboard.artist.find(params[:id])
  render component: ‘@billboard.artist’, props: { artist: @artist }
  end
  def new
  @artist = @billboard.artist.new
  render component: ‘ArtistNew’, props: { artist: @artist }
  end
  def edit
  @artist = @billboard.artist.find(params[:id])
  render component: ‘ArtistEdit’, props: { artist: @artist }
  end
  def create
    @artist = @billboard.artist.new(artist_params)
    if @artist.save
      redirect_to artists_path
    else
      render component: ‘ArtistNew’, props: { artist: @artist }
    end
  end
  def update
    @artist = @billboard.artist.find(params[:id])
    if @artist.update(artist_param)
      redirect_to artists_path
    else
      render component: ‘ArtistEdit’, props: { artist: @artist }
    end
  end
  def destroy
    @billboard.artist.find(params[:id]).destroy
    redirect_to artists_path
  end
  private
  def artist_params
    params.require(:artist).permit(:name, :album,)
  end
end
