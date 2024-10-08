
require "application_system_test_case"

class RoutesTest < ApplicationSystemTestCase
  test "should get root" do
    visit root_url
    assert_current_path root_path
  end

  test "should get search" do
    visit search_path
    assert_current_path search_path
  end

  test "should get all_uploads" do
    visit uploads_path
    assert_current_path uploads_path
  end

  test "should get sign_in" do
    visit new_user_session_path
    assert_current_path new_user_session_path
  end

  test "should get sign_up" do
    visit new_user_registration_path
    assert_current_path new_user_registration_path
  end

  test "non extant path should redirect to root_path" do
    visit "/non_existant_path"
    assert_current_path root_path

    visit "/non_existant_path/with/multiple/segments"
    assert_current_path root_path
  end
end
