class HomestaysController < ApplicationController
  def index
    @homestays = Homestay.all
  end

  def show
    @homestay = Homestay.find(params[:id])
  end
end
