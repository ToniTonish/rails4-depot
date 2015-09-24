class PayType < ActiveRecord::Base
	has_many :orders, inverse_of: :pay_type
end
