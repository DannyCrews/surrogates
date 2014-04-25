Rails.application.routes.draw do
  root 'tasks#index'
  get "tasks" => "tasks#index"
  get "surrogates" => "surrogates#index"
end
