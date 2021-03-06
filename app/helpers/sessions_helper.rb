module SessionsHelper

	def login(user)
		session[:user_id] = user.id
		@current_user = user
	end

	def current_user
		@current_user ||= session[:user_id] && User.find(session[:user_id])
		
	end

	def logged_in?
		if current_user == nil
			redirect_to "/sign-in"
		end
	end

	def logout
		@current_user = session[:user_id] = nil
	end

	# def authorize
	# 	if @current_user == User.find(param[:id])
	# 		@right_user = true
	# 	else
	# 		@right_user = false
	# 	end
	# end	
end