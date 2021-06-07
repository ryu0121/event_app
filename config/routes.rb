Rails.application.routes.draw do
  root 'welcome#index'
  get '/search', to: 'welcome#search'
  get '/auth/:provider/callback' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :retirements

  resources :events do
    resources :tickets
  end
end
