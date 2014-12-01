require File.expand_path('test/test_helper')
 
class RegisterTest < ActiveSupport::TestCase
  
  test "add registration" do
    Registration :create, :Registraon => { :studentNumber => 6775091, :firstName => 'Nick'}
    assert !reg.save
  end
end
