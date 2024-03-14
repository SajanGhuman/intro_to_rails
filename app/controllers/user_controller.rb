class UserController < ApplicationController
    def index
        @users = User.page(params[:page]).per(10)
        if params[:query].present?
          @users = @users.where("name LIKE ?", "%#{params[:query]}%")
        end
      end 

      def show 
        @user = User.find(params[:id])
        @comment = @user.comments[0]  
      end
end
