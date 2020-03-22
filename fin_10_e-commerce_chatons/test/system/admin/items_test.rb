require "application_system_test_case"

class Admin::ItemsTest < ApplicationSystemTestCase
  setup do
    @admin_item = admin_items(:one)
  end

  test "visiting the index" do
    visit admin_items_url
    assert_selector "h1", text: "Admin/Items"
  end

  test "creating a Item" do
    visit admin_items_url
    click_on "New Admin/Item"

    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit admin_items_url
    click_on "Edit", match: :first

    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit admin_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
