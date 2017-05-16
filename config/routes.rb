Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tasks, except: [:delete]

  # # READ
  # # GET a list of tasks
  # get "tasks", to: "tasks#index"

  # # GET a single task
  # get "tasks/new", to: "tasks#new"


  # # CREATE
  # # Display the task FORM
  # get "tasks/:id", to: "tasks#show"

  # # Process the new form
  # post "tasks", to: "tasks#create"


  # #UPDATE
  # # Display the update form
  # get "tasks/:id/edit", to: "tasks#edit"

  # # Process the update form
  # put "tasks/:id", to: "tasks#update"
  # patch "tasks/:id", to: "tasks#update"


  # # DELETE
  # delete "tasks/:id", to: "tasks#destroy"

end
