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
    end
end
