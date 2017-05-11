Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "widgets#index"
  get "/about", to: "staticpages#about"
  get "/help", to: "staticpages#help"
  get "/policy", to: "staticpages#policy"
  resources :widgets, path:"event" do
    resources :widget_images, :only => [:new, :create, :show, :destroy], path:"images"
    member do
      get :likes
    end
  end 
  resources :likes, only: [:create, :destroy]
end
