class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
    @bookings = @artwork.bookings
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    @artwork.save
    redirect_to artwork_path(@artwork)
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :artist_name, :location, :description, :price_per_day)
  end
end
