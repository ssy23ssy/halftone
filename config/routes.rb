Rails.application.routes.draw do
  devise_for :users
  root 'travel#index'
  resources :travel, except: :index
  get 'travel/mylist' => 'travel#mylist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
