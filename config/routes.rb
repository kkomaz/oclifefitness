Rails.application.routes.draw do
  resources :trainers, :except => [:show]
  get 'welcome/index'
  devise_for :users
  root 'welcome#index'
end
