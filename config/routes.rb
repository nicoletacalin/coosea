Rails.application.routes.draw do
  root "home#index"
  resources :home, only: [:index]
  devise_for :users

  resources :tasks do
    patch "move"
  end

  resources :lists do
   resources :tasks
   patch "move_left"
   patch "move_right"
  end

  resources :boards do
   resources :lists
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
