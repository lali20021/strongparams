class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        if
            @user = User.create(user_params)
            render 'show'
        else
            redirect_to 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end
end
