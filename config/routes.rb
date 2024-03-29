Rails.application.routes.draw do
  root to: 'anime_list#index'
  get "/about", to: "anime_list#about"
  get "/anime/:id", to: "anime_comment#show", as: 'anime_comment'
  get "/user/:id", to: "user#show", as: 'user'
  get "/comment/:id", to: "comment#show", as: 'comment'
  get "/animes", to: "anime_list#table"
  get "/users", to: "user#index"
  get "/avatar", to: "avatar#index"
  get "/comments", to: "comment#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
