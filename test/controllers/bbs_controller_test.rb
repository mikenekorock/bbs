require 'test_helper'

class BbsControllerTest < ActionController::TestCase
  setup do
    @bb = bbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bb" do
    assert_difference('Bb.count') do
      post :create, bb: { name: @bb.name, text: @bb.text, time: @bb.time }
    end

    assert_redirected_to bb_path(assigns(:bb))
  end

  test "should show bb" do
    get :show, id: @bb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bb
    assert_response :success
  end

  test "should update bb" do
    patch :update, id: @bb, bb: { name: @bb.name, text: @bb.text, time: @bb.time }
    assert_redirected_to bb_path(assigns(:bb))
  end

  test "should destroy bb" do
    assert_difference('Bb.count', -1) do
      delete :destroy, id: @bb
    end

    assert_redirected_to bbs_path
  end
end
