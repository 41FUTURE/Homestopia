class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    @user = User.new
    @homestay = Homestay.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.homestay = Homestay.find(params[:homestay_id])
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :homestay, :status, :booking_end, :booking_start, :number_of_guests)
  end
end
