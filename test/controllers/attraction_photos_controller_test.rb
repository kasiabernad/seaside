require 'test_helper'

class AttractionPhotosControllerTest < ActionController::TestCase
  setup do
    @attraction_photo = attraction_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attraction_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attraction_photo" do
    assert_difference('AttractionPhoto.count') do
      post :create, attraction_photo: { attraction_id: @attraction_photo.attraction_id, picture: @attraction_photo.picture }
    end

    assert_redirected_to attraction_photo_path(assigns(:attraction_photo))
  end

  test "should show attraction_photo" do
    get :show, id: @attraction_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attraction_photo
    assert_response :success
  end

  test "should update attraction_photo" do
    patch :update, id: @attraction_photo, attraction_photo: { attraction_id: @attraction_photo.attraction_id, picture: @attraction_photo.picture }
    assert_redirected_to attraction_photo_path(assigns(:attraction_photo))
  end

  test "should destroy attraction_photo" do
    assert_difference('AttractionPhoto.count', -1) do
      delete :destroy, id: @attraction_photo
    end

    assert_redirected_to attraction_photos_path
  end
end
