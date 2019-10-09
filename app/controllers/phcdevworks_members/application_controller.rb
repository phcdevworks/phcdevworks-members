module PhcdevworksMembers
    class ApplicationController < ActionController::Base

        # Security Filters
        protect_from_forgery with: :exception

        # Load Requried Helper Files
        helper PhcdevworksCore::Engine.helpers
        helper PhcdevworksActiveMenus::Engine.helpers
        helper PhcdevworksNotifications::Engine.helpers
        helper PhcdevworksTitleseo::Engine.helpers

    end
end
