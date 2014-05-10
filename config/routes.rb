Portfolio::Application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes self

  resources :screenshots
  resources :projects_technologies
  resources :technologies
  resources :projects

  get 'about' => 'home#about', as: 'about'
  get 'details/:type/:id' => 'details#index', as: 'details'

  root 'home#index'
end
