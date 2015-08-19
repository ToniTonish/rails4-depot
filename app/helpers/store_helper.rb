module StoreHelper
	def number_to_currency(number, options= {:unit => "&euro;", :separator => ","})
    	Object.new.extend(ActionView::Helpers::NumberHelper).number_to_currency(number, options)
  	end
end
