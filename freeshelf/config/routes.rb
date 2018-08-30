Rails.application.routes.draw do
 
 
  
  get 'freeshelf/index'
  get 'freeshelf/view/:id', to: "freeshelf#view", as: "freeshelf_view"
  #get "books/show/:id" => "books#show"
  get 'books/list', to: "books#list", as: "list_book"
  # get 'books/show'
  # get 'books/new'
  # get 'books/create'
  # get 'books/edit'
  # get '/signup', to: "users#signup"
  # post '/signup', to: "users#save_user"
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#signup'
  post '/signup', to: 'users#save'
  resources :books
  resources :users
  get 'books/index'
  
  root "freeshelf#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
