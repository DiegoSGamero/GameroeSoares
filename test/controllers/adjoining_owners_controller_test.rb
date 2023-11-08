require "test_helper"

class AdjoiningOwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adjoining_owners_index_url
    assert_response :success
  end

  test "should get show" do
    get adjoining_owners_show_url
    assert_response :success
  end

  test "should get new" do
    get adjoining_owners_new_url
    assert_response :success
  end

  test "should get create" do
    get adjoining_owners_create_url
    assert_response :success
  end

  test "should get edit" do
    get adjoining_owners_edit_url
    assert_response :success
  end

  test "should get update" do
    get adjoining_owners_update_url
    assert_response :success
  end

  test "should get destroy" do
    get adjoining_owners_destroy_url
    assert_response :success
  end
end
