Rails.application.routes.draw do

  # Define your application routes per the DSL in

  get '/tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  # The `new` route needs to be placed before the `show` route
  # Defines the root path route ("/")
  post 'tasks', to: 'tasks#create'
  get '/task/:id', to: 'tasks#show', as: :task
  # root "articles#index"
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch  'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
