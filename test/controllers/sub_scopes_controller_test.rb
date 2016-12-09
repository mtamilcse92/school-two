require 'test_helper'

class SubScopesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sub_scopes_index_url
    assert_response :success
  end

  test "should get show" do
    get sub_scopes_show_url
    assert_response :success
  end

  test "should get new" do
    get sub_scopes_new_url
    assert_response :success
  end

  test "should get create" do
    get sub_scopes_create_url
    assert_response :success
  end

  test "should get edit" do
    get sub_scopes_edit_url
    assert_response :success
  end

  test "should get update" do
    get sub_scopes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sub_scopes_destroy_url
    assert_response :success
  end

end
