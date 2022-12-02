class UsersController < ApplicationController
    # show method
    def show
        #find user by session's ID
        user = User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: {"error": "User not found"}
        end
    end
end
