require 'test_helper'

module PhcdevworksMembers
  class Member::AddressesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @member_address = phcdevworks_members_member_addresses(:one)
    end

    test "should get index" do
      get member_addresses_url
      assert_response :success
    end

    test "should get new" do
      get new_member_address_url
      assert_response :success
    end

    test "should create member_address" do
      assert_difference('Member::Address.count') do
        post member_addresses_url, params: { member_address: { member_address_city: @member_address.member_address_city, member_address_country: @member_address.member_address_country, member_address_line_1: @member_address.member_address_line_1, member_address_line_2: @member_address.member_address_line_2, member_address_postal_code: @member_address.member_address_postal_code, member_address_province: @member_address.member_address_province, member_address_type: @member_address.member_address_type } }
      end

      assert_redirected_to member_address_url(Member::Address.last)
    end

    test "should show member_address" do
      get member_address_url(@member_address)
      assert_response :success
    end

    test "should get edit" do
      get edit_member_address_url(@member_address)
      assert_response :success
    end

    test "should update member_address" do
      patch member_address_url(@member_address), params: { member_address: { member_address_city: @member_address.member_address_city, member_address_country: @member_address.member_address_country, member_address_line_1: @member_address.member_address_line_1, member_address_line_2: @member_address.member_address_line_2, member_address_postal_code: @member_address.member_address_postal_code, member_address_province: @member_address.member_address_province, member_address_type: @member_address.member_address_type } }
      assert_redirected_to member_address_url(@member_address)
    end

    test "should destroy member_address" do
      assert_difference('Member::Address.count', -1) do
        delete member_address_url(@member_address)
      end

      assert_redirected_to member_addresses_url
    end
  end
end
