Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register"} 
  

  resources :reviews do
    member do
      get :toggle_status
    end
  end

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
	
  resources :ratings

	resources :dashboards

  root to: 'pages#home'

  get 'faq', to: 'pages#faq'
  
end
