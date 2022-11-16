class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    @user = User.new
    @homestay = Homestay.new
  end

  def create
    @booking = Booking.new
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @booking.homestay = Homestay.find(params[:homestay_id])
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_end, :booking_start, :number_of_guests)
  end
end
