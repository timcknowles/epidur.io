require 'test_helper'

class FollowUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @follow_up = follow_ups(:one)
  end

  test "should get index" do
    get follow_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_follow_up_url
    assert_response :success
  end

  test "should create follow_up" do
    assert_difference('FollowUp.count') do
      post follow_ups_url, params: { follow_up: { awareness_GA: @follow_up.awareness_GA, back_pain: @follow_up.back_pain, comments: @follow_up.comments, headache: @follow_up.headache, itching: @follow_up.itching, leg_numbness: @follow_up.leg_numbness, leg_weakness: @follow_up.leg_weakness, nausea: @follow_up.nausea, pain: @follow_up.pain, patient_id: @follow_up.patient_id, urinary_rentention: @follow_up.urinary_rentention, user_id: @follow_up.user_id } }
    end

    assert_redirected_to follow_up_url(FollowUp.last)
  end

  test "should show follow_up" do
    get follow_up_url(@follow_up)
    assert_response :success
  end

  test "should get edit" do
    get edit_follow_up_url(@follow_up)
    assert_response :success
  end

  test "should update follow_up" do
    patch follow_up_url(@follow_up), params: { follow_up: { awareness_GA: @follow_up.awareness_GA, back_pain: @follow_up.back_pain, comments: @follow_up.comments, headache: @follow_up.headache, itching: @follow_up.itching, leg_numbness: @follow_up.leg_numbness, leg_weakness: @follow_up.leg_weakness, nausea: @follow_up.nausea, pain: @follow_up.pain, patient_id: @follow_up.patient_id, urinary_rentention: @follow_up.urinary_rentention, user_id: @follow_up.user_id } }
    assert_redirected_to follow_up_url(@follow_up)
  end

  test "should destroy follow_up" do
    assert_difference('FollowUp.count', -1) do
      delete follow_up_url(@follow_up)
    end

    assert_redirected_to follow_ups_url
  end
end
