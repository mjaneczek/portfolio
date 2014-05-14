Portfolio::Application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes self

  namespace :api do
    resources :technologies

    resources :projects do
      collection do
        get :recent
      end
    end
  end

  resources :templates, only: :show, constraints: { id: /.*/ }
  root to: 'templates#show'
end
