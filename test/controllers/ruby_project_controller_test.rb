require "test_helper"

class RubyProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ruby_project_index_url
    assert_response :success
  end
end
