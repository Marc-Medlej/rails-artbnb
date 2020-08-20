class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index

    if params[:query].present?
      @artworks = Artwork.where("location @@ :query OR artist_name @@ :query", query: "%#{params[:query]}%")
    else
      @artworks = Artwork.all
    end

    @geo_artworks = @artworks.geocoded

    @markers = @geo_artworks.map do |geo_artwork|
      {
        lat: geo_artwork.latitude,
        lng: geo_artwork.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { artwork: geo_artwork })
      }
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
    @bookings = @artwork.bookings
    @markers = [{
      lat: @artwork.latitude,
      lng: @artwork.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { artwork: @artwork })
    }]
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
    params.require(:artwork).permit(:name, :artist_name, :location, :description, :price_per_day, :photo)
  end
end
