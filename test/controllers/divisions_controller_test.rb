require "test_helper"

class DivisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @division = divisions(:one)
  end

  test "should get index" do
    get divisions_url, as: :json
    assert_response :success
  end

  test "should create division" do
    assert_difference("Division.count") do
      post divisions_url, params: { division: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show division" do
    get division_url(@division), as: :json
    assert_response :success
  end

  test "should update division" do
    patch division_url(@division), params: { division: {  } }, as: :json
    assert_response :success
  end

  test "should destroy division" do
    assert_difference("Division.count", -1) do
      delete division_url(@division), as: :json
    end

    assert_response :no_content
  end
end
