require "test_helper"

class BureausControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bureau = bureaus(:one)
  end

  test "should get index" do
    get bureaus_url
    assert_response :success
  end

  test "should get new" do
    get new_bureau_url
    assert_response :success
  end

  test "should create bureau" do
    assert_difference('Bureau.count') do
      post bureaus_url, params: { bureau: { name: @bureau.name } }
    end

    assert_redirected_to bureau_url(Bureau.last)
  end

  test "should show bureau" do
    get bureau_url(@bureau)
    assert_response :success
  end

  test "should get edit" do
    get edit_bureau_url(@bureau)
    assert_response :success
  end

  test "should update bureau" do
    patch bureau_url(@bureau), params: { bureau: { name: @bureau.name } }
    assert_redirected_to bureau_url(@bureau)
  end

  test "should destroy bureau" do
    assert_difference('Bureau.count', -1) do
      delete bureau_url(@bureau)
    end

    assert_redirected_to bureaus_url
  end
end
