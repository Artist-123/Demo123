require 'json'

class UsersController < ApplicationController
	#before_action :authentication_request , except: %i[create]

	def create
		 @user = User.new(user_params)
       # @token = encode_token(user_id: user.id)
       if @user.save
        render json: { message: 'user created successfully' }, status: :created
    else
    	render json: {message: "Error, Unauthorized"}, status: :unprocessable_entity
	end
end
	private
	def user_params
		params.permit(:email, :fname, :lname, :mobile_number, :password)
		
	end
	def authenticate_user 
      render json: {message:  "you must be login to user"} unless current_user    
    end
end
