Rails.application.routes.draw do
  root 'welcome#dashboard'

  get 'signin', to: 'sessions#new'
  get 'auth/:provider/callback', to: 'sessions#google_auth'
  get 'auth/failure', to: redirect('/')
end
