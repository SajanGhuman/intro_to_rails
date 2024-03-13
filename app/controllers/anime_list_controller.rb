class AnimeListController < ApplicationController
    def index
        @animes = AnimeList.all
      end
end
