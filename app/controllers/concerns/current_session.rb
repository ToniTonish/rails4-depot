module CurrentSession extend ActiveSupport::Concern

	private

	def increment_session
		if session[:counter].nil?
			session[:counter] = 0
		end
			session[:counter] += 1
	end

	def reset_session
		session[:counter] = nil;
	end
end