require 'test_helper'

class OpportunitiesControllerTest < ActionController::TestCase
  setup do
    @opportunity = opportunities(:two)
    @opportunity2 =opportunities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opportunities)
  end

  test "should create opportunity" do
    assert_difference('Opportunity.count') do
      post :create, opportunity: { buyername: @opportunity.buyername, description: @opportunity.description, placeofperform: @opportunity.placeofperform, primaypoc: @opportunity.primaypoc, publishdate: @opportunity.publishdate, responseduedate: @opportunity.responseduedate, setaside: @opportunity.setaside, status: @opportunity.status, title: @opportunity.title, opportunitytype: @opportunity.opportunitytype }
    end

    assert_response 201
  end
  
  test "should create opportunity2" do
    assert_difference('Opportunity.count') do
      post :create, opportunity: { buyername: @opportunity2.buyername, description: @opportunity2.description, placeofperform: @opportunity2.placeofperform, primaypoc: @opportunity2.primaypoc, publishdate: @opportunity2.publishdate, responseduedate: @opportunity2.responseduedate, setaside: @opportunity2.setaside, status: @opportunity2.status, title: @opportunity2.title, opportunitytype: @opportunity2.opportunitytype }
    end

    assert_response 201
  end

  test "should show opportunity" do
    get :show, id: @opportunity
    assert_response :success
  end

  test "should update opportunity" do
    put :update, id: @opportunity, opportunity: { buyername: @opportunity.buyername, description: @opportunity.description, placeofperform: @opportunity.placeofperform, primaypoc: @opportunity.primaypoc, publishdate: @opportunity.publishdate, responseduedate: @opportunity.responseduedate, setaside: @opportunity.setaside, status: @opportunity.status, title: @opportunity.title, opportunitytype: @opportunity.opportunitytype }
    assert_response 204
  end

  test "should destroy opportunity" do
    assert_difference('Opportunity.count', -1) do
      delete :destroy, id: @opportunity
    end

    assert_response 204
  end
end
