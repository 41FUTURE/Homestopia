class HomestaysController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @homestays =
      if params[:query].present?
        policy_scope(Homestay).search_by_address(params[:query])
      else
        policy_scope(Homestay)
      end

    @markers = @homestays.geocoded.map do |homestay|
      {
        lat: homestay.latitude,
        lng: homestay.longitude
      }
    end
  end

  def show
    @homestay = Homestay.find(params[:id])
    authorize @homestay
    @booking = Booking.new
  end

  def new
    @homestay = Homestay.new
    @user = User.new
    @homestay.user = current_user
    authorize @homestay
  end

  def create
    @homestay = Homestay.new(homestay_params)
    @homestay.user = current_user
    authorize @homestay
    if @homestay.save
      redirect_to homestays_path
    else
      raise
      render :new, status: :unprocessable_entity
    end
  end

  private

  def homestay_params
    params.require(:homestay).permit(:name, :tag_list, :number_of_users, :comments, :price, :availability, :family_description, :accomodation, :address, photos: [])
  end

end
