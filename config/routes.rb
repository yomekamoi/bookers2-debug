Rails.application.routes.draw do

	root 'home#top'
  get 'top' => "homes#top"
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  

end