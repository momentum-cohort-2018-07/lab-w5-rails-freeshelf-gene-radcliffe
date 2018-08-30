require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_path
    assert_response :success
  end


  test "should get show" do
    get book_path
    assert_response :success
  end

  test "should get new" do
    get new_book_path
    assert_response :success
  end

  test "should get create" do
    get books_path
    assert_response :success
  end

  test "should get edit" do
    get edit_book_path
    assert_response :success
  end

end
