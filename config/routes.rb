Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get '/create' => 'home#create'
  get '/like/:id' => 'home#like'


end
