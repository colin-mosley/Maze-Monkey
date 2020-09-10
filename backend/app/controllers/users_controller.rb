class UsersController < ApplicationController
    
    def create
        user = User.new(username: params[:username])
        if user.save 
            render json: user
        else
            render json: user.errors.full_messages
        end
    end
    
    def show
        user = User.find(params[:id])
        render json: user
    end

end
