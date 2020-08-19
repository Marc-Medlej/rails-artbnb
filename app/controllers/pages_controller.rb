class PagesController < ApplicationController
  def home
  end

  def profile
    @bookings = Booking.where(user: current_user)
    @artworks = Artwork.where(user: current_user)
  end
end
