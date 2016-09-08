Rails.application.routes.draw do
  devise_for :users
  resources :enquiries
  root 'pages#home'
  get 'pages/about'
  get 'pages/work'
  get 'pages/contact'
  get 'pages/links'
  get 'pages/hilltown'
  get 'pages/benyk'
  get "sitemap.xml" => "sitemaps#index", :format => "xml", :as => :sitemap
  match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]
  # get 'pages/hilltown'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
