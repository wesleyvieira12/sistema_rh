require 'test_helper'

class AddEmpresaIdToPacotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_empresa_id_to_pacote = add_empresa_id_to_pacotes(:one)
  end

  test "should get index" do
    get add_empresa_id_to_pacotes_url
    assert_response :success
  end

  test "should get new" do
    get new_add_empresa_id_to_pacote_url
    assert_response :success
  end

  test "should create add_empresa_id_to_pacote" do
    assert_difference('AddEmpresaIdToPacote.count') do
      post add_empresa_id_to_pacotes_url, params: { add_empresa_id_to_pacote: { empresa_id: @add_empresa_id_to_pacote.empresa_id } }
    end

    assert_redirected_to add_empresa_id_to_pacote_url(AddEmpresaIdToPacote.last)
  end

  test "should show add_empresa_id_to_pacote" do
    get add_empresa_id_to_pacote_url(@add_empresa_id_to_pacote)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_empresa_id_to_pacote_url(@add_empresa_id_to_pacote)
    assert_response :success
  end

  test "should update add_empresa_id_to_pacote" do
    patch add_empresa_id_to_pacote_url(@add_empresa_id_to_pacote), params: { add_empresa_id_to_pacote: { empresa_id: @add_empresa_id_to_pacote.empresa_id } }
    assert_redirected_to add_empresa_id_to_pacote_url(@add_empresa_id_to_pacote)
  end

  test "should destroy add_empresa_id_to_pacote" do
    assert_difference('AddEmpresaIdToPacote.count', -1) do
      delete add_empresa_id_to_pacote_url(@add_empresa_id_to_pacote)
    end

    assert_redirected_to add_empresa_id_to_pacotes_url
  end
end
