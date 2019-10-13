require "application_system_test_case"

module PhcdevworksMembers
  class Member::ListingsTest < ApplicationSystemTestCase
    setup do
      @member_listing = phcdevworks_members_member_listings(:one)
    end

    test "visiting the index" do
      visit member_listings_url
      assert_selector "h1", text: "Member/Listings"
    end

    test "creating a Listing" do
      visit member_listings_url
      click_on "New Member/Listing"

      click_on "Create Listing"

      assert_text "Listing was successfully created"
      click_on "Back"
    end

    test "updating a Listing" do
      visit member_listings_url
      click_on "Edit", match: :first

      click_on "Update Listing"

      assert_text "Listing was successfully updated"
      click_on "Back"
    end

    test "destroying a Listing" do
      visit member_listings_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Listing was successfully destroyed"
    end
  end
end
