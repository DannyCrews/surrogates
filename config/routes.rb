Rails.application.routes.draw do
  root 'tasks#index'
  get "tasks" => "tasks#index"
end
