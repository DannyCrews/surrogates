Rails.application.routes.draw do
  root 'surrogates#index'
  get "tasks" => "tasks#index"
  get "surrogates" => "surrogates#index"
  get "surrogates/:id" => "surrogates#show", as: "surrogate"
end
