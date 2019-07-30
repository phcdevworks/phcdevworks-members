require_dependency "phcdevworks_members/application_controller"

module PhcdevworksMembers
  class Info::DashboardController < ApplicationController

    # INDEX
    def index
      @member_profile_dashboard = Phcmembers::Member::Profile.all
      @member_listing_dashboard = Phcmembers::Member::Listing.all
      @member_address_dashboard = Phcmembers::Member::Address.all
      @directory_category_dashboard = Phcmembers::Directory::Category.all
    end

  end
end
