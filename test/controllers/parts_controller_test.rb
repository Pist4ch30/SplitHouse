require "test_helper"

class PartsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get parts_new_url
    assert_response :success
  end

  test "should get create" do
    get parts_create_url
    assert_response :success
  end

  test "should get show" do
    get parts_show_url
    assert_response :success
  end

  test "should get destroy" do
    get parts_destroy_url
    assert_response :success
  end
end
