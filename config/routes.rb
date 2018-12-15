Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    post 'signup', to: 'devise/registrations#new'
    delete 'logout', to: 'devise/sessions#destroy'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, :items
end
