require "application_system_test_case"

class RegOrdensTest < ApplicationSystemTestCase
  setup do
    @reg_orden = reg_ordens(:one)
  end

  test "visiting the index" do
    visit reg_ordens_url
    assert_selector "h1", text: "Reg Ordens"
  end

  test "creating a Reg orden" do
    visit reg_ordens_url
    click_on "New Reg Orden"

    fill_in "Cliente", with: @reg_orden.cliente_id
    fill_in "Fecha", with: @reg_orden.fecha
    click_on "Create Reg orden"

    assert_text "Reg orden was successfully created"
    click_on "Back"
  end

  test "updating a Reg orden" do
    visit reg_ordens_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @reg_orden.cliente_id
    fill_in "Fecha", with: @reg_orden.fecha
    click_on "Update Reg orden"

    assert_text "Reg orden was successfully updated"
    click_on "Back"
  end

  test "destroying a Reg orden" do
    visit reg_ordens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reg orden was successfully destroyed"
  end
end
