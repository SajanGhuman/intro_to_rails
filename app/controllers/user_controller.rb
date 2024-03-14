class UserController < ApplicationController
    def index
        @users = User.page(params[:page]).per(10)
      end 

      def show 
        @user = User.find(params[:id])
        @comment = @user.comments[0]  
      end
end
