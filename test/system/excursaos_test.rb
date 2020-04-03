require "application_system_test_case"

class ExcursaosTest < ApplicationSystemTestCase
  setup do
    @excursao = excursaos(:one)
  end

  test "visiting the index" do
    visit excursaos_url
    assert_selector "h1", text: "Excursaos"
  end

  test "creating a Excursao" do
    visit excursaos_url
    click_on "New Excursao"

    fill_in "Chegada", with: @excursao.chegada
    fill_in "Destino", with: @excursao.destino
    fill_in "Nome", with: @excursao.nome
    fill_in "Partida", with: @excursao.partida
    fill_in "Qtdveiculos", with: @excursao.qtdveiculos
    click_on "Create Excursao"

    assert_text "Excursao was successfully created"
    click_on "Back"
  end

  test "updating a Excursao" do
    visit excursaos_url
    click_on "Edit", match: :first

    fill_in "Chegada", with: @excursao.chegada
    fill_in "Destino", with: @excursao.destino
    fill_in "Nome", with: @excursao.nome
    fill_in "Partida", with: @excursao.partida
    fill_in "Qtdveiculos", with: @excursao.qtdveiculos
    click_on "Update Excursao"

    assert_text "Excursao was successfully updated"
    click_on "Back"
  end

  test "destroying a Excursao" do
    visit excursaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Excursao was successfully destroyed"
  end
end
