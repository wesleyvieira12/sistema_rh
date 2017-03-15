require 'test_helper'

class PacotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pacote = pacotes(:one)
  end

  test "should get index" do
    get pacotes_url
    assert_response :success
  end

  test "should get new" do
    get new_pacote_url
    assert_response :success
  end

  test "should create pacote" do
    assert_difference('Pacote.count') do
      post pacotes_url, params: { pacote: { tipo_pacote_id: @pacote.tipo_pacote_id } }
    end

    assert_redirected_to pacote_url(Pacote.last)
  end

  test "should show pacote" do
    get pacote_url(@pacote)
    assert_response :success
  end

  test "should get edit" do
    get edit_pacote_url(@pacote)
    assert_response :success
  end

  test "should update pacote" do
    patch pacote_url(@pacote), params: { pacote: { tipo_pacote_id: @pacote.tipo_pacote_id } }
    assert_redirected_to pacote_url(@pacote)
  end

  test "should destroy pacote" do
    assert_difference('Pacote.count', -1) do
      delete pacote_url(@pacote)
    end

    assert_redirected_to pacotes_url
  end
end
