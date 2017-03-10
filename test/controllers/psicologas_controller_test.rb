require 'test_helper'

class PsicologasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psicologa = psicologas(:one)
  end

  test "should get index" do
    get psicologas_url
    assert_response :success
  end

  test "should get new" do
    get new_psicologa_url
    assert_response :success
  end

  test "should create psicologa" do
    assert_difference('Psicologa.count') do
      post psicologas_url, params: { psicologa: { n_orgao: @psicologa.n_orgao, name: @psicologa.name } }
    end

    assert_redirected_to psicologa_url(Psicologa.last)
  end

  test "should show psicologa" do
    get psicologa_url(@psicologa)
    assert_response :success
  end

  test "should get edit" do
    get edit_psicologa_url(@psicologa)
    assert_response :success
  end

  test "should update psicologa" do
    patch psicologa_url(@psicologa), params: { psicologa: { n_orgao: @psicologa.n_orgao, name: @psicologa.name } }
    assert_redirected_to psicologa_url(@psicologa)
  end

  test "should destroy psicologa" do
    assert_difference('Psicologa.count', -1) do
      delete psicologa_url(@psicologa)
    end

    assert_redirected_to psicologas_url
  end
end
