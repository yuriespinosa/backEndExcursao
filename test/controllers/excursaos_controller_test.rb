require 'test_helper'

class ExcursaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @excursao = excursaos(:one)
  end

  test "should get index" do
    get excursaos_url
    assert_response :success
  end

  test "should get new" do
    get new_excursao_url
    assert_response :success
  end

  test "should create excursao" do
    assert_difference('Excursao.count') do
      post excursaos_url, params: { excursao: { chegada: @excursao.chegada, destino: @excursao.destino, nome: @excursao.nome, partida: @excursao.partida, qtdveiculos: @excursao.qtdveiculos } }
    end

    assert_redirected_to excursao_url(Excursao.last)
  end

  test "should show excursao" do
    get excursao_url(@excursao)
    assert_response :success
  end

  test "should get edit" do
    get edit_excursao_url(@excursao)
    assert_response :success
  end

  test "should update excursao" do
    patch excursao_url(@excursao), params: { excursao: { chegada: @excursao.chegada, destino: @excursao.destino, nome: @excursao.nome, partida: @excursao.partida, qtdveiculos: @excursao.qtdveiculos } }
    assert_redirected_to excursao_url(@excursao)
  end

  test "should destroy excursao" do
    assert_difference('Excursao.count', -1) do
      delete excursao_url(@excursao)
    end

    assert_redirected_to excursaos_url
  end
end
