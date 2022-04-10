require "test_helper"

class ScheduleAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get schedule_answers_new_url
    assert_response :success
  end

  test "should get answer" do
    get schedule_answers_answer_url
    assert_response :success
  end

  test "should get edit" do
    get schedule_answers_edit_url
    assert_response :success
  end
end
