class StoreController < ApplicationController
	include CurrentSession
	include CurrentCart

	before_action :increment_session, only: [:index]
	before_action :set_cart, only: [:index]

  def index
  	@count = "You have been here #{session[:counter]}" if session[:counter] > 5
  	@products = Product.order(:title)
  end
end
