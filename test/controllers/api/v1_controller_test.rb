require "test_helper"

class Api::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get blog" do
    get api_v1_blog_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_create_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_index_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_destroy_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_update_url
    assert_response :success
  end
end
