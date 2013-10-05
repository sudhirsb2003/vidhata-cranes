require 'test_helper'

class CustomerFeedbacksControllerTest < ActionController::TestCase
  setup do
    @customer_feedback = customer_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_feedback" do
    assert_difference('CustomerFeedback.count') do
      post :create, customer_feedback: { address: @customer_feedback.address, company_name: @customer_feedback.company_name, email: @customer_feedback.email, fax_no: @customer_feedback.fax_no, person_name: @customer_feedback.person_name, req_detail: @customer_feedback.req_detail, tel_no: @customer_feedback.tel_no }
    end

    assert_redirected_to customer_feedback_path(assigns(:customer_feedback))
  end

  test "should show customer_feedback" do
    get :show, id: @customer_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_feedback
    assert_response :success
  end

  test "should update customer_feedback" do
    put :update, id: @customer_feedback, customer_feedback: { address: @customer_feedback.address, company_name: @customer_feedback.company_name, email: @customer_feedback.email, fax_no: @customer_feedback.fax_no, person_name: @customer_feedback.person_name, req_detail: @customer_feedback.req_detail, tel_no: @customer_feedback.tel_no }
    assert_redirected_to customer_feedback_path(assigns(:customer_feedback))
  end

  test "should destroy customer_feedback" do
    assert_difference('CustomerFeedback.count', -1) do
      delete :destroy, id: @customer_feedback
    end

    assert_redirected_to customer_feedbacks_path
  end
end
