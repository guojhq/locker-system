require File.expand_path('test/test_helper')
 
class RegisterTest < ActiveSupport::TestCase
  
  test "add registration" do
    reg = Registration.new 
    #reg :studentNumber => 6775091, :firstName => 'Nick'
    assert !reg.save
  end
  
  test “should create registration” do
  assert_difference(‘Registration.count’) do
    post :create, :registration => { }
  end
  assert_redirected_to registration_path(assigns(:registration))
end
end
