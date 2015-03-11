require 'test_helper'

class UsertypesControllerTest < ActionController::TestCase
  setup do
    @usertype = usertypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usertypes)
  end

  test "should create usertype" do
    assert_difference('Usertype.count') do
      post :create, usertype: { name: @usertype.name }
    end

    assert_response 201
  end

  test "should show usertype" do
    get :show, id: @usertype
    assert_response :success
  end

  test "should update usertype" do
    put :update, id: @usertype, usertype: { name: @usertype.name }
    assert_response 204
  end

  test "should destroy usertype" do
    assert_difference('Usertype.count', -1) do
      delete :destroy, id: @usertype
    end

    assert_response 204
  end
end
