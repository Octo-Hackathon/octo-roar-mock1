require 'test_helper'

class OpportunityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not save opportunity without title" do
    oppo = Opportunity.new 
    assert_not oppo.save, "Saved article without Title"
  end
  
end
