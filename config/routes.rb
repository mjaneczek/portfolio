Portfolio::Application.routes.draw do
  resources :projects_technologies

  devise_for :users
  resources :technologies
  resources :projects

  root 'home#index'
  get 'about' => 'home#about', as: 'about'

  get 'details/:type/:id' => 'details#index', as: 'details'
end
