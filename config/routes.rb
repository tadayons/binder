Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :docs # https://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default
end
