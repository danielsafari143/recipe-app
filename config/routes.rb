Rails.application.routes.draw do
  devise_for :users , path:'/' , path_name:{sign_in: 'login' , sign_out: 'logout' , sign_up: 'sign_up'}
  
end
