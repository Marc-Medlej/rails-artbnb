class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @artwork = Artwork.find(params[:artwork_id])
  end

  def create
    @booking = Booking.new(strong_params)
    @booking.user = current_user
    @artwork = Artwork.find(params[:artwork_id])
    @booking.artwork = @artwork
    @booking.status = "pending"
    @booking.calculated_price = @artwork.price_per_day * (@booking.time_end-@booking.time_start)
    @booking.save
    redirect_to profile_path
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  def update
    @booking = Booking.find(params[:id])  
    @booking.update({'status': params[:status]})

    @artwork = @booking.artwork

    redirect_to artwork_path(@artwork)
  end

  private

  def strong_params
    params.require(:booking).permit(:status, :time_start, :time_end, :calculated_price)
  end
end
