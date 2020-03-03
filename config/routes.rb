Rails.application.routes.draw do
  root 'hello#index'
  get 'hello/index'
  get 'hello', to: 'hello#index'
  get 'hello/other'
  post 'hello', to: 'hello#index'
  post 'hello/index'
  resources :talks, :only => :create
end

