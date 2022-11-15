Rails.application.routes.draw do
  # Define your application routes per the DSL in

  get '/tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'

  # Defines the root path route ("/")
  post 'tasks', to: 'tasks#create'
  # root "articles#index"
  get 'tasks/:id/edit', to: 'tasks#edit'

  patch  'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
  get '/tasks/:id', to: 'tasks#show', as: :task
end
