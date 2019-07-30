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

      fill_in "Listing address line 1", with: @member_listing.listing_address_line_1
      fill_in "Listing address line 2", with: @member_listing.listing_address_line_2
      fill_in "Listing city", with: @member_listing.listing_city
      fill_in "Listing company name", with: @member_listing.listing_company_name
      fill_in "Listing contact email", with: @member_listing.listing_contact_email
      fill_in "Listing contact name", with: @member_listing.listing_contact_name
      fill_in "Listing country", with: @member_listing.listing_country
      fill_in "Listing phone", with: @member_listing.listing_phone
      fill_in "Listing postal code", with: @member_listing.listing_postal_code
      fill_in "Listing province", with: @member_listing.listing_province
      fill_in "Listing website", with: @member_listing.listing_website
      click_on "Create Listing"

      assert_text "Listing was successfully created"
      click_on "Back"
    end

    test "updating a Listing" do
      visit member_listings_url
      click_on "Edit", match: :first

      fill_in "Listing address line 1", with: @member_listing.listing_address_line_1
      fill_in "Listing address line 2", with: @member_listing.listing_address_line_2
      fill_in "Listing city", with: @member_listing.listing_city
      fill_in "Listing company name", with: @member_listing.listing_company_name
      fill_in "Listing contact email", with: @member_listing.listing_contact_email
      fill_in "Listing contact name", with: @member_listing.listing_contact_name
      fill_in "Listing country", with: @member_listing.listing_country
      fill_in "Listing phone", with: @member_listing.listing_phone
      fill_in "Listing postal code", with: @member_listing.listing_postal_code
      fill_in "Listing province", with: @member_listing.listing_province
      fill_in "Listing website", with: @member_listing.listing_website
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
