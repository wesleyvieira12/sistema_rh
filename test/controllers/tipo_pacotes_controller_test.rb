require 'test_helper'

class TipoPacotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_pacote = tipo_pacotes(:one)
  end

  test "should get index" do
    get tipo_pacotes_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_pacote_url
    assert_response :success
  end

  test "should create tipo_pacote" do
    assert_difference('TipoPacote.count') do
      post tipo_pacotes_url, params: { tipo_pacote: { name: @tipo_pacote.name, numeroEntrevistas: @tipo_pacote.numeroEntrevistas } }
    end

    assert_redirected_to tipo_pacote_url(TipoPacote.last)
  end

  test "should show tipo_pacote" do
    get tipo_pacote_url(@tipo_pacote)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_pacote_url(@tipo_pacote)
    assert_response :success
  end

  test "should update tipo_pacote" do
    patch tipo_pacote_url(@tipo_pacote), params: { tipo_pacote: { name: @tipo_pacote.name, numeroEntrevistas: @tipo_pacote.numeroEntrevistas } }
    assert_redirected_to tipo_pacote_url(@tipo_pacote)
  end

  test "should destroy tipo_pacote" do
    assert_difference('TipoPacote.count', -1) do
      delete tipo_pacote_url(@tipo_pacote)
    end

    assert_redirected_to tipo_pacotes_url
  end
end
