Portfolio::Application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes self

  namespace :api do
    resources :technologies do
      collection do
        get :important
      end
    end

    resources :projects do
      collection do
        get :recent
      end
    end

    resources :jobs, only: :index
  end

  resources :templates, only: :show, constraints: { id: /.*/ }
  root to: 'templates#show'
end
