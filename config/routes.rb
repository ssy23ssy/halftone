Rails.application.routes.draw do
  get 'spend/new'

  get 'spend/create'

  devise_for :users
  root 'travel#index'
  get 'travel/mylist'

  resources :travel, except: :index do
    resources :spend, only: [:new, :create, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
