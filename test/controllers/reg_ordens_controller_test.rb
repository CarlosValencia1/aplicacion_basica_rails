require 'test_helper'

class RegOrdensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reg_orden = reg_ordens(:one)
  end

  test "should get index" do
    get reg_ordens_url
    assert_response :success
  end

  test "should get new" do
    get new_reg_orden_url
    assert_response :success
  end

  test "should create reg_orden" do
    assert_difference('RegOrden.count') do
      post reg_ordens_url, params: { reg_orden: { cliente_id: @reg_orden.cliente_id, fecha: @reg_orden.fecha } }
    end

    assert_redirected_to reg_orden_url(RegOrden.last)
  end

  test "should show reg_orden" do
    get reg_orden_url(@reg_orden)
    assert_response :success
  end

  test "should get edit" do
    get edit_reg_orden_url(@reg_orden)
    assert_response :success
  end

  test "should update reg_orden" do
    patch reg_orden_url(@reg_orden), params: { reg_orden: { cliente_id: @reg_orden.cliente_id, fecha: @reg_orden.fecha } }
    assert_redirected_to reg_orden_url(@reg_orden)
  end

  test "should destroy reg_orden" do
    assert_difference('RegOrden.count', -1) do
      delete reg_orden_url(@reg_orden)
    end

    assert_redirected_to reg_ordens_url
  end
end
