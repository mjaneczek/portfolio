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

  get 'about' => 'home#about', as: 'about'
  get 'details/:type/:id' => 'details#index', as: 'details'

  root 'home#index'
end
