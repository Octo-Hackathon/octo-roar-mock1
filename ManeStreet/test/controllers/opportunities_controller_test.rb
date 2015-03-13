require 'test_helper'

class OpportunitiesControllerTest < ActionController::TestCase
  setup do
    @opportunity = opportunities(:two)
    @opportunity2 =opportunities(:one)
    @opportunity3 =opportunities(:three)
    @opportunity4 =opportunities(:four)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opportunities)
  end
  
  
  
  test "should get one opportunity" do
    get :show, id: @opportunity4
    assert_response :success
  end
  
  
  
  test "test publish one opportunity" do
    get :publish, id: @opportunity4
    assert_response :success
  end
  
  test "should get 7 days opportunity" do
    get :searchDaysGov, id: 7
    assert_response :success
  end
  
  test "Search By Criteria Title" do
    get :searchByGov, criteria: "title" , value: @opportunity4.title
    assert_response :success
  end
  
  test "Search By Criteria description" do
    get :searchByGov, criteria: "description" , value: @opportunity4.description
    assert_response :success
  end
  
  test "Search By Criteria publishdate" do
    get :searchByGov, criteria: "publishdate" , value: @opportunity4.publishdate
    assert_response :success
  end
  
  
  test "should get 30 days opportunity" do
    get :searchDaysGov, id: 30
    assert_response :success
  end

  test "should create opportunity" do
    assert_difference('Opportunity.count') do
      post :create, opportunity: { buyername: @opportunity.buyername, description: @opportunity.description, placeofperform: @opportunity.placeofperform, primaypoc: @opportunity.primaypoc, publishdate: @opportunity.publishdate, responseduedate: @opportunity.responseduedate, setaside: @opportunity.setaside, status: @opportunity.status, title: @opportunity.title, opportunitytype: @opportunity.opportunitytype }
    end

    assert_response 201
  end
  
  test "should fail to create opportunity2 with empty title" do
    assert_no_difference('Opportunity.count') do
      post :create, opportunity: { buyername: @opportunity2.buyername, description: @opportunity2.description, placeofperform: @opportunity2.placeofperform, primaypoc: @opportunity2.primaypoc, publishdate: @opportunity2.publishdate, responseduedate: @opportunity2.responseduedate, setaside: @opportunity2.setaside, status: @opportunity2.status, title: @opportunity2.title, opportunitytype: @opportunity2.opportunitytype }
    end

    assert_response 422
  end
  
  test "should fail to create opportunity3 with empty descrption" do
    assert_no_difference('Opportunity.count') do
      post :create, opportunity: { buyername: @opportunity3.buyername, description: @opportunity3.description, placeofperform: @opportunity3.placeofperform, primaypoc: @opportunity3.primaypoc, publishdate: @opportunity3.publishdate, responseduedate: @opportunity3.responseduedate, setaside: @opportunity3.setaside, status: @opportunity3.status, title: @opportunity3.title, opportunitytype: @opportunity3.opportunitytype }
    end

    assert_response 422
  end

  test "should show opportunity" do
    get :show, id: @opportunity
    assert_response :success
  end
  
   test "should create opportunity4" do
    assert_difference('Opportunity.count') do
      post :create, opportunity: { buyername: @opportunity4.buyername, description: @opportunity4.description, placeofperform: @opportunity4.placeofperform, primaypoc: @opportunity4.primaypoc, publishdate: @opportunity4.publishdate, responseduedate: @opportunity4.responseduedate, setaside: @opportunity4.setaside, status: @opportunity4.status, title: @opportunity4.title, opportunitytype: @opportunity4.opportunitytype }
    end

    assert_response 201
  end

  test "should update opportunity" do
    put :update, id: @opportunity, opportunity: { buyername: @opportunity.buyername, description: @opportunity.description, placeofperform: @opportunity.placeofperform, primaypoc: @opportunity.primaypoc, publishdate: @opportunity.publishdate, responseduedate: @opportunity.responseduedate, setaside: @opportunity.setaside, status: @opportunity.status, title: @opportunity.title, opportunitytype: @opportunity.opportunitytype }
    assert_response 204
  end
  
    test "should not update opportunity2" do
    put :update, id: @opportunity2, opportunity: { buyername: @opportunity2.buyername, description: @opportunity2.description, placeofperform: @opportunity2.placeofperform, primaypoc: @opportunity2.primaypoc, publishdate: @opportunity2.publishdate, responseduedate: @opportunity2.responseduedate, setaside: @opportunity2.setaside, status: @opportunity2.status, title: @opportunity2.title, opportunitytype: @opportunity2.opportunitytype }
    assert_response 422
  end

  test "should destroy opportunity" do
    assert_difference('Opportunity.count', -1) do
      delete :destroy, id: @opportunity
    end

    assert_response 204
  end
end
