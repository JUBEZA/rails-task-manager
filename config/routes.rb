Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/tasks', to: 'tasks#index' # read
  get '/tasks/new', to: 'tasks#new' # create
  post '/tasks', to: 'tasks#create' # create
  get '/tasks/:id', to: 'tasks#show', as: :task # read
  get '/tasks/:id/edit', to: 'tasks#edit' # update
  patch '/tasks/:id', to: 'tasks#update' # update
  delete '/tasks/:id', to: 'tasks#destroy' # destroy
end
