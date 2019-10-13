Rails.application.routes.draw do

    # Root Path
    root :to => "website/page#index"

    # Mount Engine for Testing
    mount PhcdevworksMembers::Engine => "/"

end
