require "test_helper"

class ProcurablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @procurable = procurables(:one)
  end

  test "should get index" do
    get procurables_url, as: :json
    assert_response :success
  end

  test "should create procurable" do
    assert_difference("Procurable.count") do
      post procurables_url, params: { procurable: { name: @procurable.name, phase_id: @procurable.phase_id, subcontractor: @procurable.subcontractor } }, as: :json
    end

    assert_response :created
  end

  test "should show procurable" do
    get procurable_url(@procurable), as: :json
    assert_response :success
  end

  test "should update procurable" do
    patch procurable_url(@procurable), params: { procurable: { name: @procurable.name, phase_id: @procurable.phase_id, subcontractor: @procurable.subcontractor } }, as: :json
    assert_response :success
  end

  test "should destroy procurable" do
    assert_difference("Procurable.count", -1) do
      delete procurable_url(@procurable), as: :json
    end

    assert_response :no_content
  end
end
