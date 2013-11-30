require 'test_helper'

class ChanteursControllerTest < ActionController::TestCase
  setup do
    @chanteur = chanteurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chanteurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chanteur" do
    assert_difference('Chanteur.count') do
      post :create, chanteur: {  }
    end

    assert_redirected_to chanteur_path(assigns(:chanteur))
  end

  test "should show chanteur" do
    get :show, id: @chanteur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chanteur
    assert_response :success
  end

  test "should update chanteur" do
    patch :update, id: @chanteur, chanteur: {  }
    assert_redirected_to chanteur_path(assigns(:chanteur))
  end

  test "should destroy chanteur" do
    assert_difference('Chanteur.count', -1) do
      delete :destroy, id: @chanteur
    end

    assert_redirected_to chanteurs_path
  end
end
