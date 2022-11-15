class HomestaysController < ApplicationController
  def index
    @homestays = Homestay.all
  end
end
