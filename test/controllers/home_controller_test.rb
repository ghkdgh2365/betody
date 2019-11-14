require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get create_contact" do
    get :create_contact
    assert_response :success
  end

  test "should get create_message" do
    get :create_message
    assert_response :success
  end

  test "should get create_comment" do
    get :create_comment
    assert_response :success
  end

  test "should get destroy_comment" do
    get :destroy_comment
    assert_response :success
  end

end
