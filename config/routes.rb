Rails.application.routes.draw do
  get 'events/new' => 'events#new'

  get 'events/create' => 'events#create'

  post 'events/create' => 'events#create'

  get '/users/new' => 'users#new'

  get '/users/show' => 'users#show'

  post '/users/show' => 'users#show'

  get '/users/create' => 'users#create'

  post '/users/create' => 'users#create'

  get '/events/show' => 'events#show'

  post 'events/show' => 'events#show'

  root 'users#new'
end
