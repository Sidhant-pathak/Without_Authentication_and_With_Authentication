class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def login
        @user = User.find_by_email(params[:email])
        if @user&.authenticate(params[:password])
            token = jwt_encode(usre_id: @user.id)
            render json: { token: token }, status: :ok
        else
            render json: {error: 'Unauthorized' }, status: :unauthorized
      end
  end

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  # def login
  #   user = User.find_by(email: params[:email])
  #   if user && user.authenticate(params [:password])
  #     token = JWT.encode({ user_id: user.id }, 'your_secret_key', 'HS256')
  #     render json: {token: token}
  #   else
  #     render json: { error: 'Invalid email or password' }, status: :unauthorized
  #   end
  # end
end
