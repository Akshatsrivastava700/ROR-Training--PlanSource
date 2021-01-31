Rails.application.routes.draw do
  devise_for :users
  post 'blogs/create'
  get 'blogs/destroy'
  get 'blogs/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
