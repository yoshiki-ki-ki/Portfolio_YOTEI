require "test_helper"

class Host::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get host_events_new_url
    assert_response :success
  end

  test "should get create" do
    get host_events_create_url
    assert_response :success
  end
end
