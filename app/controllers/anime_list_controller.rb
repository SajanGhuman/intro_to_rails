class AnimeListController < ApplicationController
    def index
        @animes = AnimeList.all
      end 

    def table
      @tables = AnimeList.page(params[:page]).per(10)
    end
end
