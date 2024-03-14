class AnimeCommentController < ApplicationController
    def show
        @anime_comment = AnimeComment.find(params[:id])
    end
end
