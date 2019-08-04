require_dependency "phcdevworks_members/application_controller"

module PhcdevworksMembers
  class Info::DashboardController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!

    # INDEX
    def index
      @member_profile_dashboard = PhcdevworksMembers::Member::Profile.all
      @member_listing_dashboard = PhcdevworksMembers::Member::Listing.all
      @member_address_dashboard = PhcdevworksMembers::Member::Address.all
      @directory_category_dashboard = PhcdevworksMembers::Directory::Category.all
    end

  end
end
