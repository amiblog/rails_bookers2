Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about", as: "about"
  #get 'books/new' new_book
  #get 'books/index' books
  #get 'books/show' book
  resources :books
  
  #get 'users/show' user
  #get 'users/edit' edit_user
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
