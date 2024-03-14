class CommentController < ApplicationController
    def index
      @comments = Comment.includes(:user).page(params[:page]).per(10)
    end

    def show 
        @comment = Comment.find(params[:id])
        @user = @comment.user
      end
  end
