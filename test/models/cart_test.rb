require 'test_helper'

class CartTest < ActiveSupport::TestCase

	test 'cart shoud create a new line when adding a new product' do
		cart = new_cart_with_one_product(:one)
		assert_equal 1, cart.line_items.length
		# add new product
		cart.add_product(products(:ruby).id, products(:ruby).price).save!
		assert_equal 2, cart.line_items.length		
	end

	test 'cart should update an existing line item when adding an existing product' do
		cart = new_cart_with_one_product(:one)
		assert_equal 1, cart.line_items.length
		# re-add same product
		cart.add_product(products(:one).id, products(:one).price).save!
		assert_equal 1, cart.line_items.length
	end


	def new_cart_with_one_product(product_name)
		cart = Cart.create
		cart.add_product(products(product_name).id, products(product_name).price).save!
		cart
	end
end
