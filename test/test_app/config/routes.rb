Rails.application.routes.draw do

  # Root
  root :to => 'website/pages#index'
  
  # Mount Engine
  mount PhcdevworksMembers::Engine => "/phcdevworks_members"

end
