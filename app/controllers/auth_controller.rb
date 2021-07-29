class AuthController < ApplicationController

    def create
      user = User.find_by(username: auth_params[:username])
      if user && user.authenticate(auth_params[:password])
       render json: user, status: :ok
      else 
        render json: {error: "Invalid User"}
      end
     end

     private

     def auth_params
        params.require(:auth).permit(:username, :password)
     end
 
    
end