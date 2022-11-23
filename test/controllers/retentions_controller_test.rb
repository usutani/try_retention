require "test_helper"

class RetentionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get retentions_show_url
    assert_response :success
  end
end
