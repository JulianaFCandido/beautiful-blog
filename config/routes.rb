Rails.application.routes.draw do
  devise_for :users
  #  controllers: {
  #    sessions: 'users/sessions',
  #    passwords: 'users/passwords',
  #    registrations: 'users/registrations'
  #  }

  root to: 'home#show'

  resources :articles
  resources :comments
  resources :categories

  get 'up' => 'rails/health#show', as: :rails_health_check
end
