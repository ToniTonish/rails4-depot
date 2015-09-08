class StoreController < ApplicationController
	include CurrentSession

	before_action :increment_session, only: [:index]

  def index
  	@count = "You have been here #{session[:counter]}" if session[:counter] > 5
  	@products = Product.order(:title)
  end
end
