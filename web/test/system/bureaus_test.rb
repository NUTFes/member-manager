require "application_system_test_case"

class BureausTest < ApplicationSystemTestCase
  setup do
    @bureau = bureaus(:one)
  end

  test "visiting the index" do
    visit bureaus_url
    assert_selector "h1", text: "Bureaus"
  end

  test "creating a Bureau" do
    visit bureaus_url
    click_on "New Bureau"

    fill_in "Name", with: @bureau.name
    click_on "Create Bureau"

    assert_text "Bureau was successfully created"
    click_on "Back"
  end

  test "updating a Bureau" do
    visit bureaus_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bureau.name
    click_on "Update Bureau"

    assert_text "Bureau was successfully updated"
    click_on "Back"
  end

  test "destroying a Bureau" do
    visit bureaus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bureau was successfully destroyed"
  end
end
