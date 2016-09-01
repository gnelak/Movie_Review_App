Rails.application.routes.draw do
  
  devise_for :users
  
  resources :movies do
  	resources :reviews, except: [:show, :index]
   
end

devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'  

  end
  
  root 'movies#index'
  end
