Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "widgets#index"
  resources :widgets do
    member do
      get :likes
    end
  end 
  resources :likes, only: [:create, :destroy]
end
