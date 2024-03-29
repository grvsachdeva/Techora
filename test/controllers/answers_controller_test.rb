require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  setup do
    @answer = answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_mailer" do
    assert_difference('Answer.count') do
      post :create, answer_mailer: {ans: @answer.ans, question_id: @answer.question_id, user_id: @answer.user_id }
    end

    assert_redirected_to answer_path(assigns(:answer_mailer))
  end

  test "should show answer_mailer" do
    get :show, id: @answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer
    assert_response :success
  end

  test "should update answer_mailer" do
    patch :update, id: @answer, answer_mailer: {ans: @answer.ans, question_id: @answer.question_id, user_id: @answer.user_id }
    assert_redirected_to answer_path(assigns(:answer_mailer))
  end

  test "should destroy answer_mailer" do
    assert_difference('Answer.count', -1) do
      delete :destroy, id: @answer
    end

    assert_redirected_to answers_path
  end
end
