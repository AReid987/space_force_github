Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"

  get 'auth/auth0', as: 'authentication'        # Triggers authentication process
  get 'auth/auth0/callback' => 'auth0#callback' # Authentication successful
  get 'auth/failure' => 'auth0#failure'         # Authentication fail
end
