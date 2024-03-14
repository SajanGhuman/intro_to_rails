class AvatarController < ApplicationController
    def index
        @avatars = Avatar.page(params[:page]).per(10)
      end 
end
