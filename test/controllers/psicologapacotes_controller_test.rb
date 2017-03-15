require 'test_helper'

class PsicologapacotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psicologapacote = psicologapacotes(:one)
  end

  test "should get index" do
    get psicologapacotes_url
    assert_response :success
  end

  test "should get new" do
    get new_psicologapacote_url
    assert_response :success
  end

  test "should create psicologapacote" do
    assert_difference('Psicologapacote.count') do
      post psicologapacotes_url, params: { psicologapacote: { psicologa_id: @psicologapacote.psicologa_id } }
    end

    assert_redirected_to psicologapacote_url(Psicologapacote.last)
  end

  test "should show psicologapacote" do
    get psicologapacote_url(@psicologapacote)
    assert_response :success
  end

  test "should get edit" do
    get edit_psicologapacote_url(@psicologapacote)
    assert_response :success
  end

  test "should update psicologapacote" do
    patch psicologapacote_url(@psicologapacote), params: { psicologapacote: { psicologa_id: @psicologapacote.psicologa_id } }
    assert_redirected_to psicologapacote_url(@psicologapacote)
  end

  test "should destroy psicologapacote" do
    assert_difference('Psicologapacote.count', -1) do
      delete psicologapacote_url(@psicologapacote)
    end

    assert_redirected_to psicologapacotes_url
  end
end
