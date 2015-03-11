require 'test_helper'

class OpportunitiesControllerTest < ActionController::TestCase
  setup do
    @opportunity = opportunities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opportunities)
  end

  test "should create opportunity" do
    assert_difference('Opportunity.count') do
      post :create, opportunity: { buyername: @opportunity.buyername, description: @opportunity.description, placeofperform: @opportunity.placeofperform, primaypoc: @opportunity.primaypoc, publishdate: @opportunity.publishdate, responseduedate: @opportunity.responseduedate, setaside: @opportunity.setaside, status: @opportunity.status, title: @opportunity.title, type: @opportunity.type }
    end

    assert_response 201
  end

  test "should show opportunity" do
    get :show, id: @opportunity
    assert_response :success
  end

  test "should update opportunity" do
    put :update, id: @opportunity, opportunity: { buyername: @opportunity.buyername, description: @opportunity.description, placeofperform: @opportunity.placeofperform, primaypoc: @opportunity.primaypoc, publishdate: @opportunity.publishdate, responseduedate: @opportunity.responseduedate, setaside: @opportunity.setaside, status: @opportunity.status, title: @opportunity.title, type: @opportunity.type }
    assert_response 204
  end

  test "should destroy opportunity" do
    assert_difference('Opportunity.count', -1) do
      delete :destroy, id: @opportunity
    end

    assert_response 204
  end
end
