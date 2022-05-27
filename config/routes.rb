Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users
  resources :users
  resources :events do
    resources :enrollments, only: [:new, :create, :destroy]
    member do
      get 'attend'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  
  # Defines the root path route ("/")
  root "events#index"
end
