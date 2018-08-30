require 'test_helper'

class FreeshelfControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get freeshelf_index_path
    assert_response :success
  end

end
