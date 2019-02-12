Rails.application.routes.draw do
  resources :materials

  root to: 'materials#index'

  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations:  'users/registrations',
    sessions:  'users/sessions',
  }

  resources :users

  # hashtags
  get '/post/hashtag/:name', to: 'materials#hashtag'

end
