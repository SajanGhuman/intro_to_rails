class UserController < ApplicationController
    def index
        @users = User.page(params[:page]).per(10)
      end 
end
