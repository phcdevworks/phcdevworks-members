require "application_system_test_case"

module PhcdevworksMembers
  class Member::AddressesTest < ApplicationSystemTestCase
    setup do
      @member_address = phcdevworks_members_member_addresses(:one)
    end

    test "visiting the index" do
      visit member_addresses_url
      assert_selector "h1", text: "Member/Addresses"
    end

    test "creating a Address" do
      visit member_addresses_url
      click_on "New Member/Address"

      fill_in "Member address city", with: @member_address.member_address_city
      fill_in "Member address country", with: @member_address.member_address_country
      fill_in "Member address line 1", with: @member_address.member_address_line_1
      fill_in "Member address line 2", with: @member_address.member_address_line_2
      fill_in "Member address postal code", with: @member_address.member_address_postal_code
      fill_in "Member address province", with: @member_address.member_address_province
      fill_in "Member address type", with: @member_address.member_address_type
      click_on "Create Address"

      assert_text "Address was successfully created"
      click_on "Back"
    end

    test "updating a Address" do
      visit member_addresses_url
      click_on "Edit", match: :first

      fill_in "Member address city", with: @member_address.member_address_city
      fill_in "Member address country", with: @member_address.member_address_country
      fill_in "Member address line 1", with: @member_address.member_address_line_1
      fill_in "Member address line 2", with: @member_address.member_address_line_2
      fill_in "Member address postal code", with: @member_address.member_address_postal_code
      fill_in "Member address province", with: @member_address.member_address_province
      fill_in "Member address type", with: @member_address.member_address_type
      click_on "Update Address"

      assert_text "Address was successfully updated"
      click_on "Back"
    end

    test "destroying a Address" do
      visit member_addresses_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Address was successfully destroyed"
    end
  end
end
