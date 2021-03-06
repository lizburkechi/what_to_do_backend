class UsersController < ApplicationController
    
    
    def create
        user = User.create user_params
        if user.valid?
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # token = encode_token({user_id: user.id})
            render json: user
        else
            render json: {error: "Nope, try it again player."}
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end
