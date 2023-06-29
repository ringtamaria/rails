require "test_helper"

class Api::V1::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_searches_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_searches_show_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_searches_new_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_searches_edit_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_searches_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_searches_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_searches_destroy_url
    assert_response :success
  end
end
