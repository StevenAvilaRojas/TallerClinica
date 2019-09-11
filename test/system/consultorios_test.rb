require "application_system_test_case"

class ConsultoriosTest < ApplicationSystemTestCase
  setup do
    @consultorio = consultorios(:one)
  end

  test "visiting the index" do
    visit consultorios_url
    assert_selector "h1", text: "Consultorios"
  end

  test "creating a Consultorio" do
    visit consultorios_url
    click_on "New Consultorio"

    fill_in "Codigo", with: @consultorio.codigo
    fill_in "Nombre", with: @consultorio.nombre
    fill_in "Tipo", with: @consultorio.tipo
    fill_in "Ubicacion", with: @consultorio.ubicacion
    click_on "Create Consultorio"

    assert_text "Consultorio was successfully created"
    click_on "Back"
  end

  test "updating a Consultorio" do
    visit consultorios_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @consultorio.codigo
    fill_in "Nombre", with: @consultorio.nombre
    fill_in "Tipo", with: @consultorio.tipo
    fill_in "Ubicacion", with: @consultorio.ubicacion
    click_on "Update Consultorio"

    assert_text "Consultorio was successfully updated"
    click_on "Back"
  end

  test "destroying a Consultorio" do
    visit consultorios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consultorio was successfully destroyed"
  end
end
