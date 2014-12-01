require File.expand_path('test/test_helper')
 
class RegisterTest < ActiveSupport::TestCase
  
  test "add registration" do
    reg = Registration.new
    assert !reg.save
  end
end
