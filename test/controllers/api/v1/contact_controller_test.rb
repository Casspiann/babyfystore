require "test_helper"

class Api::V1::ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_contact_create_url
    assert_response :success
  end
end
