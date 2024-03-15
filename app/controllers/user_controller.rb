class UserController < ApplicationController
  def index
    @users = User.page(params[:page]).per(10)
    if params[:category] == "comments" && params[:query].present?
      # Search users based on comments content
      @users = @users.joins(:comments).where("comments.content LIKE ?", "%#{params[:query]}%").distinct
    elsif params[:query].present?
      # Search users based on their name
      @users = @users.where("users.name LIKE ?", "%#{params[:query]}%")
    end
end 

      def show 
        @user = User.find(params[:id])
        @comment = @user.comments[0]  
      end
end

