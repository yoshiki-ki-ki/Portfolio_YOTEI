require "test_helper"

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get schedules_show_url
    assert_response :success
  end
end
