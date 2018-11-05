Rails.application.routes.draw do

  root :to => 'staticpages#home'

  

  get 'staticpages/private'

  get    '/login',   to: 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  resources :sessions

  resources :users, only:[:new, :create, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
