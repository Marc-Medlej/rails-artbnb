class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @artwork = Artwork.find(params[:artwork_id])
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @artwork = Artwork.find(params[:artwork_id])
    @booking.artwork = @artwork
    @booking.save
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(strong_params)
    redirect_to booking_path(@booking)
  end

  private

  def strong_params
    params.require(:booking).permit(:status, :time_start, :time_end, :calculated_price)
  end
end
