require 'test_helper'

class ClientePacotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente_pacote = cliente_pacotes(:one)
  end

  test "should get index" do
    get cliente_pacotes_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_pacote_url
    assert_response :success
  end

  test "should create cliente_pacote" do
    assert_difference('ClientePacote.count') do
      post cliente_pacotes_url, params: { cliente_pacote: { client_id: @cliente_pacote.client_id, pacote_id: @cliente_pacote.pacote_id } }
    end

    assert_redirected_to cliente_pacote_url(ClientePacote.last)
  end

  test "should show cliente_pacote" do
    get cliente_pacote_url(@cliente_pacote)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_pacote_url(@cliente_pacote)
    assert_response :success
  end

  test "should update cliente_pacote" do
    patch cliente_pacote_url(@cliente_pacote), params: { cliente_pacote: { client_id: @cliente_pacote.client_id, pacote_id: @cliente_pacote.pacote_id } }
    assert_redirected_to cliente_pacote_url(@cliente_pacote)
  end

  test "should destroy cliente_pacote" do
    assert_difference('ClientePacote.count', -1) do
      delete cliente_pacote_url(@cliente_pacote)
    end

    assert_redirected_to cliente_pacotes_url
  end
end
