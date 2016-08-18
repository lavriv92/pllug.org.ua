require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get '/'
    assert_response :success
  end

  test "shold get contact" do
    get contact_url
    assert_response :success
  end

  test "should get roadmap" do
    get roadmap_url
    assert_response :success
  end
end
