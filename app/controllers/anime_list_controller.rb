class AnimeListController < ApplicationController
    def index
    end 

    def about 
    end

    def show 
      @anime = AnimeList.find(params[:id])
    end

    def table
      @tables = AnimeList.page(params[:page]).per(10)
      if params[:query].present?
        @tables = @tables.where("eng_name LIKE ?", "%#{params[:query]}%")
      end
    end
end

