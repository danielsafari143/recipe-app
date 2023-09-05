Rails.application.routes.draw do
  devise_for :users , path:'/' #, path_name:{sign_in: 'login' , sign_out: 'logout' , sign_up: 'sign_up'}
  root to: 'recipes#index'

  get '/general_shopping_list' , to: 'recipes#index'
  get '/foods' , to: 'foods#index'

  resources :recipes do
    resources :foods
    resources :recipe_foods
  end
  
end
