Portfolio::Application.routes.draw do
  resources :screenshots

  resources :projects_technologies

  devise_for :users, controllers: { :registrations => "registrations" } 
  resources :technologies
  resources :projects

  root 'home#index'
  get 'about' => 'home#about', as: 'about'

  get 'details/:type/:id' => 'details#index', as: 'details'

  mount JasmineRails::Engine => '/jasmine' if defined?(JasmineRails)
end
