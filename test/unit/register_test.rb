require File.expand_path('test/test_helper')
 
class RegisterTest < ActiveSupport::TestCase
  
  test "add registration" do
    reg = Registration.new
    reg.registration_parms 6775091:studentNumber
    assert !reg.save
  end
end
