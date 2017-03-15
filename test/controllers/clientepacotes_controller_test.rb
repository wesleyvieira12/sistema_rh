require 'test_helper'

class ClientepacotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clientepacote = clientepacotes(:one)
  end

  test "should get index" do
    get clientepacotes_url
    assert_response :success
  end

  test "should get new" do
    get new_clientepacote_url
    assert_response :success
  end

  test "should create clientepacote" do
    assert_difference('Clientepacote.count') do
      post clientepacotes_url, params: { clientepacote: { client_id: @clientepacote.client_id } }
    end

    assert_redirected_to clientepacote_url(Clientepacote.last)
  end

  test "should show clientepacote" do
    get clientepacote_url(@clientepacote)
    assert_response :success
  end

  test "should get edit" do
    get edit_clientepacote_url(@clientepacote)
    assert_response :success
  end

  test "should update clientepacote" do
    patch clientepacote_url(@clientepacote), params: { clientepacote: { client_id: @clientepacote.client_id } }
    assert_redirected_to clientepacote_url(@clientepacote)
  end

  test "should destroy clientepacote" do
    assert_difference('Clientepacote.count', -1) do
      delete clientepacote_url(@clientepacote)
    end

    assert_redirected_to clientepacotes_url
  end
end
