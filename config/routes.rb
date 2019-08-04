PhcdevworksMembers::Engine.routes.draw do

  # Dashboard Routes
  get 'dashboard', to: 'info/dashboard#index'
  
  # Member Routes
  namespace :member do
    resources :profiles, class_name: 'Member::Profile' do
      resources :listings, class_name: 'Member::Listing'
      resources :addresses, class_name: 'Member::Address'
    end
  end
  
  # Directory Routes
  namespace :directory do
    resources :categories, class_name: 'Directory::Category'
  end
  
  # API Routes
  namespace :api, :path => "", :constraints => {:subdomain => "api"} do
    namespace :v1 do
      resources :categories, defaults: {format: 'json'} do
      resources :listings, defaults: {format: 'json'}
    end
    end
  end
  
  # Mount Routes
  mount PhcdevworksAccounts::Engine, :at => '/'
  
end
