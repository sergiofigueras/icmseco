require 'test_helper'

class MeioambienteControllerTest < ActionController::TestCase
  setup do
    @meioambiente = meioambiente(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meioambiente)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meioambiente" do
    assert_difference('Meioambiente.count') do
      post :create, meioambiente: { desc: @meioambiente.desc, nome: @meioambiente.nome, prazo: @meioambiente.prazo }
    end

    assert_redirected_to meioambiente_path(assigns(:meioambiente))
  end

  test "should show meioambiente" do
    get :show, id: @meioambiente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meioambiente
    assert_response :success
  end

  test "should update meioambiente" do
    patch :update, id: @meioambiente, meioambiente: { desc: @meioambiente.desc, nome: @meioambiente.nome, prazo: @meioambiente.prazo }
    assert_redirected_to meioambiente_path(assigns(:meioambiente))
  end

  test "should destroy meioambiente" do
    assert_difference('Meioambiente.count', -1) do
      delete :destroy, id: @meioambiente
    end

    assert_redirected_to meioambiente_index_path
  end
end
