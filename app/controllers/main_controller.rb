class MainController < ApplicationController
  def home
    @bookings = Booking.all
  end

  def about
  end
  def contact
  end
end
