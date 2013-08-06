Portfolio::Application.routes.draw do
  resources :projects

  root 'home#index'

  get 'windows' => 'home#windows_applications', as: 'windows_applications'
  get 'web' => 'home#web_applications', as: 'web_applications'
  get 'about' => 'home#about', as: 'about'

  get ':controller' => 'controller#index'
  get ':controller/:action/' => 'controller#action'
end
