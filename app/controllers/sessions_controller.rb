class SessionsController < ApplicationController
    #create method
    def create
        user = User.find_by(username: params[:username])
        #save the user's ID in the session hash
        session[:user_id] = user.id

        #render user as JSON
        render json: user, status: :ok
    end

    #destroy method
    def destroy
        #remove user ID from session hash
        session.delete :user_id
        head :no_content
    end
end
