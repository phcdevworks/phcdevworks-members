require 'test_helper'

module PhcdevworksMembers
  class Member::ListingsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @member_listing = phcdevworks_members_member_listings(:one)
    end

    test "should get index" do
      get member_listings_url
      assert_response :success
    end

    test "should get new" do
      get new_member_listing_url
      assert_response :success
    end

    test "should create member_listing" do
      assert_difference('Member::Listing.count') do
        post member_listings_url, params: { member_listing: {  } }
      end

      assert_redirected_to member_listing_url(Member::Listing.last)
    end

    test "should show member_listing" do
      get member_listing_url(@member_listing)
      assert_response :success
    end

    test "should get edit" do
      get edit_member_listing_url(@member_listing)
      assert_response :success
    end

    test "should update member_listing" do
      patch member_listing_url(@member_listing), params: { member_listing: {  } }
      assert_redirected_to member_listing_url(@member_listing)
    end

    test "should destroy member_listing" do
      assert_difference('Member::Listing.count', -1) do
        delete member_listing_url(@member_listing)
      end

      assert_redirected_to member_listings_url
    end
  end
end
