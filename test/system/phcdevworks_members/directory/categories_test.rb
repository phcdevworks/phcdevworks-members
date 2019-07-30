require "application_system_test_case"

module PhcdevworksMembers
  class Directory::CategoriesTest < ApplicationSystemTestCase
    setup do
      @directory_category = phcdevworks_members_directory_categories(:one)
    end

    test "visiting the index" do
      visit directory_categories_url
      assert_selector "h1", text: "Directory/Categories"
    end

    test "creating a Category" do
      visit directory_categories_url
      click_on "New Directory/Category"

      fill_in "Category name", with: @directory_category.category_name
      click_on "Create Category"

      assert_text "Category was successfully created"
      click_on "Back"
    end

    test "updating a Category" do
      visit directory_categories_url
      click_on "Edit", match: :first

      fill_in "Category name", with: @directory_category.category_name
      click_on "Update Category"

      assert_text "Category was successfully updated"
      click_on "Back"
    end

    test "destroying a Category" do
      visit directory_categories_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Category was successfully destroyed"
    end
  end
end
