Rails.application.routes.draw do
  resources :contacts, :except => [:show, :destroy, :edit, :update]
  resources :services
  resources :trainers, :except => [:show]
  resources :testimonials, :except => [:show]
  get 'welcome/index'
  devise_for :users
  root 'welcome#index'
end
