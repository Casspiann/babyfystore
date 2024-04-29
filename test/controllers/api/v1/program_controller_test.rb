require "test_helper"

class Api::V1::ProgramControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_program_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_program_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_program_show_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_program_delete_url
    assert_response :success
  end
end
