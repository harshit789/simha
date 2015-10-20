class BookingsController < ApplicationController
  before_action :authenticate_user_or_404
  before_action :set_booking, only: [:show, :destroy, :join_in]

  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
    @cabs = Cab.all
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.price = (params[:distance].to_i / 1000 * 2 + 40) * @booking.cab.price.to_i

    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
      redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  def check_existing
    @bookings = Booking.where({
      from: params[:from],
      to: params[:to],
    })

    unless @bookings.count > 0
      render json: {status: 0}
      return
    end

    render "check_existing.json"
  end

  def join_in
    render json: {
      contact: {
        name: @booking.user.name,
        phone: @booking.user.phone
      }
    }
  end

  private
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:from, :to, :datetime, :cab_id)
    end

    def authenticate_user_or_404
      unless user_signed_in?
        raise ActionController::RoutingError.new('Not Found')
      end
    end
end
