Rails.application.routes.draw do
  root to: 'anime_list#index'
  get "/about", to: "anime_list#about"
  get "/show", to: "anime_list#show"
  get "/animes", to: "anime_list#table"
  get "/users", to: "user#index"
  get "/avatar", to: "avatar#index"
  get "/comments", to: "comment#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
