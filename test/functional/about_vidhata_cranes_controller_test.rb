require 'test_helper'

class AboutVidhataCranesControllerTest < ActionController::TestCase
  setup do
    @about_vidhata_crane = about_vidhata_cranes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_vidhata_cranes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_vidhata_crane" do
    assert_difference('AboutVidhataCrane.count') do
      post :create, about_vidhata_crane: { about_us: @about_vidhata_crane.about_us }
    end

    assert_redirected_to about_vidhata_crane_path(assigns(:about_vidhata_crane))
  end

  test "should show about_vidhata_crane" do
    get :show, id: @about_vidhata_crane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about_vidhata_crane
    assert_response :success
  end

  test "should update about_vidhata_crane" do
    put :update, id: @about_vidhata_crane, about_vidhata_crane: { about_us: @about_vidhata_crane.about_us }
    assert_redirected_to about_vidhata_crane_path(assigns(:about_vidhata_crane))
  end

  test "should destroy about_vidhata_crane" do
    assert_difference('AboutVidhataCrane.count', -1) do
      delete :destroy, id: @about_vidhata_crane
    end

    assert_redirected_to about_vidhata_cranes_path
  end
end
