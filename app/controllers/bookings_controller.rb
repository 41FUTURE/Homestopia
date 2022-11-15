class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
