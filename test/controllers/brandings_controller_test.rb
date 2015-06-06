require 'test_helper'

class BrandingsControllerTest < ActionController::TestCase
  setup do
    @branding = brandings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brandings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create branding" do
    assert_difference('Branding.count') do
      post :create, branding: { background_color: @branding.background_color, main_color: @branding.main_color, secondary_color: @branding.secondary_color }
    end

    assert_redirected_to branding_path(assigns(:branding))
  end

  test "should show branding" do
    get :show, id: @branding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @branding
    assert_response :success
  end

  test "should update branding" do
    patch :update, id: @branding, branding: { background_color: @branding.background_color, main_color: @branding.main_color, secondary_color: @branding.secondary_color }
    assert_redirected_to branding_path(assigns(:branding))
  end

  test "should destroy branding" do
    assert_difference('Branding.count', -1) do
      delete :destroy, id: @branding
    end

    assert_redirected_to brandings_path
  end
end
