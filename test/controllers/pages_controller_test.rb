require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
  end

  test "should get contect_us" do
    get pages_contect_us_url
    assert_response :success
  end

  test "should get privacy" do
    get pages_privacy_url
    assert_response :success
  end

  test "should get term_conditions" do
    get pages_term_conditions_url
    assert_response :success
  end
end
