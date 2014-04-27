Surrogates::Application.routes.draw do
  root 'tasks#index'

  resources :surrogates do
      resources :tasks
  end
end
