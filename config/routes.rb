Portfolio::Application.routes.draw do
  resources :technologies

  resources :projects

  root 'home#index'
  get 'about' => 'home#about', as: 'about'

  get ':controller' => 'controller#index'
  get ':controller/:action/' => 'controller#action'
end
