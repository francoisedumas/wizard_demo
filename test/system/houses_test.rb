require "application_system_test_case"

class HousesTest < ApplicationSystemTestCase
  setup do
    @house = houses(:one)
  end

  test "visiting the index" do
    visit houses_url
    assert_selector "h1", text: "Houses"
  end

  test "should create house" do
    visit houses_url
    click_on "New house"

    fill_in "Address", with: @house.address
    fill_in "Current family last name", with: @house.current_family_last_name
    fill_in "Exterior color", with: @house.exterior_color
    fill_in "Interior color", with: @house.interior_color
    fill_in "Rooms", with: @house.rooms
    fill_in "Square feet", with: @house.square_feet
    click_on "Create House"

    assert_text "House was successfully created"
    click_on "Back"
  end

  test "should update House" do
    visit house_url(@house)
    click_on "Edit this house", match: :first

    fill_in "Address", with: @house.address
    fill_in "Current family last name", with: @house.current_family_last_name
    fill_in "Exterior color", with: @house.exterior_color
    fill_in "Interior color", with: @house.interior_color
    fill_in "Rooms", with: @house.rooms
    fill_in "Square feet", with: @house.square_feet
    click_on "Update House"

    assert_text "House was successfully updated"
    click_on "Back"
  end

  test "should destroy House" do
    visit house_url(@house)
    click_on "Destroy this house", match: :first

    assert_text "House was successfully destroyed"
  end
end
