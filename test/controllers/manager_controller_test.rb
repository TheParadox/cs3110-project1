require 'test_helper'

class ManagerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get newartist" do
    get :newartist
    assert_response :success
  end

  test "should get newalbum" do
    get :newalbum
    assert_response :success
  end

  test "should get newsong" do
    get :newsong
    assert_response :success
  end

end
