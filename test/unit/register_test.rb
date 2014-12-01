require 'test_helper'
 
class RegisterTest < ActiveSupport::TestCase
  
  test "add orginaization" do
    org = Organization.new
    assert !org.save
  end
  
  
  test "create registration" do
    assert true
  end
end
