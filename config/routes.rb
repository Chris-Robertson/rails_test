Rails.application.routes.draw do
  resources :items
  get '/menu' => 'menu#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
