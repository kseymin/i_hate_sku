Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'home/index'

  get '/input_db' => 'home#input_db'
  get '/like_input_db/:id' => 'home#like_input_db'


end
