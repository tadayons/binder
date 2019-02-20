Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :notes # https://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default

  authenticated :user do
    root "notes#index", as: "authenticated_root"
  end
  
  root 'welcome#index'
end
