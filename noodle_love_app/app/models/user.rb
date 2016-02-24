class User < ActiveRecord::Base
	has_many :reviews

	# validates :user, uniqueness: true
	has_secure_password

	# before_action logged_in

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
