Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'sign_up' }
  root 'recipes#index'

  resources :recipes
  resources :foods
  get '/shoppings', to: 'shoppings#index', as: 'shoppings'
end
