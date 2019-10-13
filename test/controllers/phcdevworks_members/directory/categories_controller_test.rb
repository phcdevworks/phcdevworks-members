require 'test_helper'

module PhcdevworksMembers
  class Directory::CategoriesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @directory_category = phcdevworks_members_directory_categories(:one)
    end

    test "should get index" do
      get directory_categories_url
      assert_response :success
    end

    test "should get new" do
      get new_directory_category_url
      assert_response :success
    end

    test "should create directory_category" do
      assert_difference('Directory::Category.count') do
        post directory_categories_url, params: { directory_category: {  } }
      end

      assert_redirected_to directory_category_url(Directory::Category.last)
    end

    test "should show directory_category" do
      get directory_category_url(@directory_category)
      assert_response :success
    end

    test "should get edit" do
      get edit_directory_category_url(@directory_category)
      assert_response :success
    end

    test "should update directory_category" do
      patch directory_category_url(@directory_category), params: { directory_category: {  } }
      assert_redirected_to directory_category_url(@directory_category)
    end

    test "should destroy directory_category" do
      assert_difference('Directory::Category.count', -1) do
        delete directory_category_url(@directory_category)
      end

      assert_redirected_to directory_categories_url
    end
  end
end
