Rails.application.routes.draw do
  root 'tasks#index'

  # get "tasks" => "tasks#index"
  # get "tasks/:id" => "tasks#show", as: "task"
  # get "tasks/:id/edit" => "tasks#edit", as: "edit_task"
  # patch "tasks/:id" => "tasks#update"

  resources :tasks


  # get "surrogates" => "surrogates#index"
  # get "surrogates/:id" => "surrogates#show", as: "surrogate"
  # get "surrogates/:id/edit" => "surrogates#edit", as: "edit_surrogate"
  # patch "surrogates/:id" => "surrogates#update"

  resources :surrogates

end
