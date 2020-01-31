Rails.application.routes.draw do
  root to: 'home#index'
  get '/home' => 'home#index'
  get '/authors/:id' => 'authors#show'
end
