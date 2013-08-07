require 'test_helper'

class ChatformsControllerTest < ActionController::TestCase
  setup do
    @chatform = chatforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chatforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chatform" do
    assert_difference('Chatform.count') do
      post :create, chatform: { content: @chatform.content }
    end

    assert_redirected_to chatform_path(assigns(:chatform))
  end

  test "should show chatform" do
    get :show, id: @chatform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chatform
    assert_response :success
  end

  test "should update chatform" do
    patch :update, id: @chatform, chatform: { content: @chatform.content }
    assert_redirected_to chatform_path(assigns(:chatform))
  end

  test "should destroy chatform" do
    assert_difference('Chatform.count', -1) do
      delete :destroy, id: @chatform
    end

    assert_redirected_to chatforms_path
  end
end
