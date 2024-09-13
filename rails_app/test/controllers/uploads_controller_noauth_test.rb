require 'test_helper'

class UploadsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @upload = uploads(:one)
  end

  test "test_1: should get home" do
    get root_path
    assert_response :success
  end

  test "test_2: should get uploads index" do
    get uploads_path
    assert_response :success
  end
  
  test "test_3: should get redirected on show page" do
    get upload_path(@upload)
    assert_redirected_to new_user_session_path
  end

  test "test_2: should get search_page" do
    get search_page_uploads_path
    assert_response :success
  end

  test "test_5: post search query" do
    visit search_page_path
    fill_in 'search-box', with: 'Sample Product'
  end

  # redirects - show new create edit update destroy
  test "test_6: show - try get upload_path without signing in - should redirect to sign in" do
    get upload_path(@upload)
    assert_redirected_to new_user_session_path
  end


end
