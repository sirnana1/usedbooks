Rails.application.routes.draw do


  root   'static_pages#home'
  get    '/help',    	to: 'static_pages#help' #, as: 'helf' # this allows the route name to be different from the default
  get    '/about',   	to: 'static_pages#about'
  get    '/contact',  to: 'static_pages#contact' # this defines contact_path and contact_url
  get    '/signup', 	to: 'users#new'
  post   '/signup',   to: 'users#create'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'


end