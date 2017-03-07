Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/sessions'
  }

  authenticated :user do
    resources :events
    root 'events#index'
  end

  unauthenticated :user do
    root 'home#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
