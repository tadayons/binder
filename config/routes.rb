Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :docs # https://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default

  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end
  
  root 'welcome#index'
end
