class ApplicationController < ActionController::API
    include JsonWebToken

   before_action :authenticate_request

   private

   def authenticate_request
    header = request.headers["Authorization"]
    header = header.split(" ").last if header
    decoded = jwt_decode(header)
    @current_user = User.find(decoded[:usre_id])
   end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # before_action :authenticate_user

    # def authenticate_user
    #     token = request.headers['Authorization']&.split(' ')&.last
    #     begin
    #         decode_token =  JWT.decode(token, 'your_secret_key', true, algorithm: 'HS256')
    #         user_id = decode_token.first['user_id']
    #     rescue JWT::DecodeError
    #         render json: { error: 'Invalid token' }, status: :unauthorized
    #     rescue ActiveRecord::RecordNotFound
    #         render json: { error: 'User not found' }, status: :unauthorized
    #     end
    # end
end
