class ArtworksController < ApplicationController
    def index
      @artworks = Artwork.all
    end

    def show
      @artwork = Artwork.find(params[:id])
    end

    def new
      @artwork = Artwork.new
    end

    def create
      @artwork = Artwork.new(artwork_params)
      @artwork.user = current_user
      @artwork.save

      # no need for app/views/artworks/create.html.erb
      redirect_to artwork_path(@artwork)
    end

    private

    def artwork_params
      params.require(:artwork).permit(:name, :artist_name, :location, :description, :price_per_day)
    end
end
