Rails.application.routes.draw do
 
  #get "books/show/:id" => "books#show"
  get 'books/list', to: "books#list", as: "list_book"
  # get 'books/show'
  # get 'books/new'
  # get 'books/create'
  # get 'books/edit'
  resources :books
  get 'books/index'
  
  root "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
