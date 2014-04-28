Surrogates::Application.routes.draw do
  root 'surrogates#index'

  resources :surrogates do
      resources :tasks
  end
end
