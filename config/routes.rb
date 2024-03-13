Rails.application.routes.draw do
  root to: 'anime_list#index'
  get "/table", to: "anime_list#table"
  get "/users", to: "user#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
