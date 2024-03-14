class AnimeListController < ApplicationController
    def index
        
      end 

    def about 
    
    end

    def show 
    
    end

    def table
      @tables = AnimeList.page(params[:page]).per(10)
    end
end
