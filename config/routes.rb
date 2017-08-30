Rails.application.routes.draw do

	devise_for :users, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register"} 

  root to: 'pages#home'

  get 'welcome', to: 'pages#welcome'

  get 'info', to: 'pages#info'

  get 'faq', to: 'pages#faq'
end
