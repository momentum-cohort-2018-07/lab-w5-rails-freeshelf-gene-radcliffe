require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup 
    @user = User.new(name: "Rowena Rose Radcliffe", email:"rowena21@yahoo.com", usertype:"guest", user_name:"rose123", password:"1234c")
  end 

  # test "the truth" do
  #   assert true
  # end

  # test "should be valid"do
  #  assert @user.valid?
  # end
  
  test "email addresses should be unique" do

    # duplicate_user = @user.dup
    # duplicate_user.email = @user.email.upcase
    # @user.save
    # assert_not duplicate_user.valid?
    
  end
  
end
