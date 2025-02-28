require "test_helper"

class GasStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gas_station = gas_stations(:one)
  end

  test "should get index" do
    get gas_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_gas_station_url
    assert_response :success
  end

  test "should create gas_station" do
    assert_difference("GasStation.count") do
      post gas_stations_url, params: { gas_station: { address: @gas_station.address, name: @gas_station.name } }
    end

    assert_redirected_to gas_station_url(GasStation.last)
  end

  test "should show gas_station" do
    get gas_station_url(@gas_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_gas_station_url(@gas_station)
    assert_response :success
  end

  test "should update gas_station" do
    patch gas_station_url(@gas_station), params: { gas_station: { address: @gas_station.address, name: @gas_station.name } }
    assert_redirected_to gas_station_url(@gas_station)
  end

  test "should destroy gas_station" do
    assert_difference("GasStation.count", -1) do
      delete gas_station_url(@gas_station)
    end

    assert_redirected_to gas_stations_url
  end
end
