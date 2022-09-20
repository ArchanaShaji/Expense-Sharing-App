class ApplicationController < ActionController::Base
	  before_action :authenticate_user!

		def after_sign_in_path_for(resource)
			user_path(current_user.id)
		end

		def after_sign_out_path_for(resource_or_scope)
		  user_session_path
		end
end
