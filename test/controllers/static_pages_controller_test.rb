require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get landing_page" do
    get :landing_page
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
