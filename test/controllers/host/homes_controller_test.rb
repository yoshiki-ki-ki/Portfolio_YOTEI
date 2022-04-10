require "test_helper"

class Host::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get host_homes_index_url
    assert_response :success
  end
end
