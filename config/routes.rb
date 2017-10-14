Rails.application.routes.draw do
  get '/users' => 'users#new'

  get '/users/show' => 'users#show'

  post '/users' => 'users#show'

  root 'users#new'
end
