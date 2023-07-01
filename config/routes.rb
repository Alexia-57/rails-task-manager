Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # enable user to display page where all tasks are listed
  get 'tasks', to: 'tasks#index', as: 'tasks'
end
