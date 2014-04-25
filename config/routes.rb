Rails.application.routes.draw do
  root 'surrogates#index'
  get "tasks" => "tasks#index"
  get "surrogates" => "surrogates#index"
  get "surrogates/:id" => "surrogates#show", as: "surrogate"
  get "surrogates/:id/edit" => "surrogates#edit", as: "edit_surrogate"
  patch "surrogates/:id" => "surrogates#update"
end
