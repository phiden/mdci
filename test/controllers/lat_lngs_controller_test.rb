require 'test_helper'

class LatLngsControllerTest < ActionController::TestCase
  setup do
    @lat_lng = lat_lngs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lat_lngs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lat_lng" do
    assert_difference('LatLng.count') do
      post :create, lat_lng: { lat: @lat_lng.lat, lng: @lat_lng.lng }
    end

    assert_redirected_to lat_lng_path(assigns(:lat_lng))
  end

  test "should show lat_lng" do
    get :show, id: @lat_lng
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lat_lng
    assert_response :success
  end

  test "should update lat_lng" do
    patch :update, id: @lat_lng, lat_lng: { lat: @lat_lng.lat, lng: @lat_lng.lng }
    assert_redirected_to lat_lng_path(assigns(:lat_lng))
  end

  test "should destroy lat_lng" do
    assert_difference('LatLng.count', -1) do
      delete :destroy, id: @lat_lng
    end

    assert_redirected_to lat_lngs_path
  end
end
