require 'test_helper'

module PhcdevworksMembers
  class Member::ProfilesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @member_profile = phcdevworks_members_member_profiles(:one)
    end

    test "should get index" do
      get member_profiles_url
      assert_response :success
    end

    test "should get new" do
      get new_member_profile_url
      assert_response :success
    end

    test "should create member_profile" do
      assert_difference('Member::Profile.count') do
        post member_profiles_url, params: { member_profile: {  } }
      end

      assert_redirected_to member_profile_url(Member::Profile.last)
    end

    test "should show member_profile" do
      get member_profile_url(@member_profile)
      assert_response :success
    end

    test "should get edit" do
      get edit_member_profile_url(@member_profile)
      assert_response :success
    end

    test "should update member_profile" do
      patch member_profile_url(@member_profile), params: { member_profile: {  } }
      assert_redirected_to member_profile_url(@member_profile)
    end

    test "should destroy member_profile" do
      assert_difference('Member::Profile.count', -1) do
        delete member_profile_url(@member_profile)
      end

      assert_redirected_to member_profiles_url
    end
  end
end
