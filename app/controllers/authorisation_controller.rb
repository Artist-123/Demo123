class AuthorisationController < ApplicationController
	 def login 
        @user = User.find_by!(email: login_params[:email])
        if @user.authenticate(login_params[:password])
            #@token = encode_token(user_id: @user.id)
            render json: { (@user),
               }, status: :accepted
        else
            render json: {message: 'Incorrect password'}, status: :unauthorized
        end

    end
    private 
    def login_params
    	params.permit(:email, :password)
    	
    end
end
