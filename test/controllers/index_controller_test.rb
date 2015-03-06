require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get challenge1" do
    get :challenge1
    assert_response :success
  end

  test "should get challenge2" do
    get :challenge2
    assert_response :success
  end

  test "should get challenge3" do
    get :challenge3
    assert_response :success
  end

end
