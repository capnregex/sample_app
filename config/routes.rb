SampleApp::Application.routes.draw do
  resources :ingredients

  resources :ingredient_types

  devise_for :users
  resources :users, :only => [:index, :show]

  get "pages/home"
  get "pages/contact"
  get "pages/about"
  get "pages/help"
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  root :to => "pages#home"
end
