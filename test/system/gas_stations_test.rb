require "application_system_test_case"

class GasStationsTest < ApplicationSystemTestCase
  setup do
    @gas_station = gas_stations(:one)
  end

  test "visiting the index" do
    visit gas_stations_url
    assert_selector "h1", text: "Gas stations"
  end

  test "should create gas station" do
    visit gas_stations_url
    click_on "New gas station"

    fill_in "Address", with: @gas_station.address
    fill_in "Name", with: @gas_station.name
    click_on "Create Gas station"

    assert_text "Gas station was successfully created"
    click_on "Back"
  end

  test "should update Gas station" do
    visit gas_station_url(@gas_station)
    click_on "Edit this gas station", match: :first

    fill_in "Address", with: @gas_station.address
    fill_in "Name", with: @gas_station.name
    click_on "Update Gas station"

    assert_text "Gas station was successfully updated"
    click_on "Back"
  end

  test "should destroy Gas station" do
    visit gas_station_url(@gas_station)
    click_on "Destroy this gas station", match: :first

    assert_text "Gas station was successfully destroyed"
  end
end
