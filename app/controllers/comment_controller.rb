class CommentController < ApplicationController
    def index
      @comments = Comment.includes(:user).page(params[:page]).per(10)
    end
  end
