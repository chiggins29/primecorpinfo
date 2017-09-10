Rails.application.routes.draw do

	devise_for :users, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register"} 

  resources :blogs
	
	resources :dashboards

  root to: 'pages#home'

  get 'faq', to: 'pages#faq'
  
end
