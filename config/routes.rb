Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'pages/about'
  get 'pages/work'
  get 'pages/contact'
  get 'pages/links'
  # get 'pages/hilltown'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
