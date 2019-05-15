Rails.application.routes.draw do
  root   'static_pages#home'
  get 'categories/new'
  get 'categories/create'
  get 'categories/show'
  get 'categories/update'
  get 'categories/edit'
  get 'categories/destroy'
  get 'categories/index'
  get 'publishers/new'
  get 'publishers/create'
  get 'publishers/show'
  get 'publishers/update'
  get 'publishers/edit'
  get 'publishers/destroy'
  get 'publishers/index'
  get 'authors/new'
  get 'authors/create'
  get 'authors/show'
  get 'authors/update'
  get 'authors/edit'
  get 'authors/destroy'
  get 'authors/index'
  get 'books/new'
  get 'books/create'
  get 'books/show'
  get 'books/update'
  get 'books/edit'
  get 'books/destroy'
  get '/books/index'
  

  get    '/help',    	to: 'static_pages#help' #, as: 'helf' # this allows the route name to be different from the default
  get    '/about',   	to: 'static_pages#about'
  get    '/contact',  to: 'static_pages#contact' # this defines contact_path and contact_url
  get    '/signup', 	to: 'users#new'
  post   '/signup',   to: 'users#create'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'


  delete '/logout',   to: 'sessions#destroy'
  resources :users
  resources :books
  resources :categories
  resources :authors
  resources :publishers


end
