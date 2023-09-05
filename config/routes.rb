Rails.application.routes.draw do
  devise_for :users , path:'/' #, path_name:{sign_in: 'login' , sign_out: 'logout' , sign_up: 'sign_up'}
  root to: 'recipes#index'

  resources :recipes do
    resources :foods
    resources :recipe_foods
  end
end
