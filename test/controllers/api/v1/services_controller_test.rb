require "test_helper"

class Api::V1::ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_services_create_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_services_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_services_show_url
    assert_response :success
  end
end
