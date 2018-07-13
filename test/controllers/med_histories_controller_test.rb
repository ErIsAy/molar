require 'test_helper'

class MedHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @med_history = med_histories(:one)
  end

  test "should get index" do
    get med_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_med_history_url
    assert_response :success
  end

  test "should create med_history" do
    assert_difference('MedHistory.count') do
      post med_histories_url, params: { med_history: { patient_id: @med_history.patient_id, q1: @med_history.q1, q10: @med_history.q10, q11: @med_history.q11, q12: @med_history.q12, q2: @med_history.q2, q3: @med_history.q3, q4: @med_history.q4, q5: @med_history.q5, q6: @med_history.q6, q7: @med_history.q7, q8: @med_history.q8, q9: @med_history.q9 } }
    end

    assert_redirected_to med_history_url(MedHistory.last)
  end

  test "should show med_history" do
    get med_history_url(@med_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_med_history_url(@med_history)
    assert_response :success
  end

  test "should update med_history" do
    patch med_history_url(@med_history), params: { med_history: { patient_id: @med_history.patient_id, q1: @med_history.q1, q10: @med_history.q10, q11: @med_history.q11, q12: @med_history.q12, q2: @med_history.q2, q3: @med_history.q3, q4: @med_history.q4, q5: @med_history.q5, q6: @med_history.q6, q7: @med_history.q7, q8: @med_history.q8, q9: @med_history.q9 } }
    assert_redirected_to med_history_url(@med_history)
  end

  test "should destroy med_history" do
    assert_difference('MedHistory.count', -1) do
      delete med_history_url(@med_history)
    end

    assert_redirected_to med_histories_url
  end
end
