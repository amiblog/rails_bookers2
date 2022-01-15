Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about", as: "about"
  #get 'books/new' new_book
  #get 'books/index' books
  #get 'books/show' book
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  
  #get 'users/show' user
  #get 'users/edit' edit_user
  resources :users, only: [:index, :show, :edit, :update]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
