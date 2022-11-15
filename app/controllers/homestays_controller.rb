class HomestaysController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @homestays = policy_scope(Homestay)
  end

  def show
    @homestay = Homestay.find(params[:id])
    authorize @homestay
   end
end
