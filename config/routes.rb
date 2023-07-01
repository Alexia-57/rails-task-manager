Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # READ INDEX enable user to display page where all tasks are listed
  get 'tasks', to: 'tasks#index', as: :tasks
  # CREATE a task - part 1
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # READ SHOW enable user to display tasks details
  get 'tasks/:id', to: 'tasks#show', as: :task
  # CREATE a task - part 2
  post 'tasks', to: 'tasks#create'

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
