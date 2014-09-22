require 'test_helper'

class ProverbsControllerTest < ActionController::TestCase
  setup do
    @proverb = proverbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proverbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proverb" do
    assert_difference('Proverb.count') do
      post :create, proverb: { author: @proverb.author, quote: @proverb.quote }
    end

    assert_redirected_to proverb_path(assigns(:proverb))
  end

  test "should show proverb" do
    get :show, id: @proverb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proverb
    assert_response :success
  end

  test "should update proverb" do
    patch :update, id: @proverb, proverb: { author: @proverb.author, quote: @proverb.quote }
    assert_redirected_to proverb_path(assigns(:proverb))
  end

  test "should destroy proverb" do
    assert_difference('Proverb.count', -1) do
      delete :destroy, id: @proverb
    end

    assert_redirected_to proverbs_path
  end
end
