require 'test_helper'

class ChansonsControllerTest < ActionController::TestCase
  setup do
    @chanson = chansons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chansons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chanson" do
    assert_difference('Chanson.count') do
      post :create, chanson: { parole: @chanson.parole, titre: @chanson.titre }
    end

    assert_redirected_to chanson_path(assigns(:chanson))
  end

  test "should show chanson" do
    get :show, id: @chanson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chanson
    assert_response :success
  end

  test "should update chanson" do
    patch :update, id: @chanson, chanson: { parole: @chanson.parole, titre: @chanson.titre }
    assert_redirected_to chanson_path(assigns(:chanson))
  end

  test "should destroy chanson" do
    assert_difference('Chanson.count', -1) do
      delete :destroy, id: @chanson
    end

    assert_redirected_to chansons_path
  end
end
