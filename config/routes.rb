Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # READ INDEX enable user to display page where all tasks are listed
  get 'tasks', to: 'tasks#index', as: :tasks
  # READ SHOW enable user to display tasks details
  get 'tasks/:id', to: 'tasks#show', as: :task
end
