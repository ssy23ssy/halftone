Rails.application.routes.draw do
  devise_for :users
  root 'travel#index'
  get 'travel/mylist'
  get 'travel/new'
  
  resources :travel, except: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
