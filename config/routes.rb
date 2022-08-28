Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "about" => "homes#about", as: "about"
  resources :users, except:[:new,:create]
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
