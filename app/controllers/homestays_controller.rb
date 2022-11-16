class HomestaysController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @homestays = Homestay.all
    @homestays = policy_scope(Homestay)
  end

  def show
    @homestay = Homestay.find(params[:id])
    authorize @homestay
    @booking = Booking.new
  end

  def user_params
    params.require(:homestay).permit(:name, :tag_list, :number_of_users, :comments, :price, :availability, :family_description, :accomodation, :address, :country, :city, :user)
  end

end
