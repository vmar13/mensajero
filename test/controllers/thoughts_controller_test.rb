require 'test_helper'

class ThoughtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get thoughts_index_url
    assert_response :success
  end

  test "should get show" do
    get thoughts_show_url
    assert_response :success
  end

  test "should get new" do
    get thoughts_new_url
    assert_response :success
  end

  test "should get create" do
    get thoughts_create_url
    assert_response :success
  end

end
