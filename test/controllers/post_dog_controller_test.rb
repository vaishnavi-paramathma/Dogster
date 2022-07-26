require "test_helper"

class PostDogControllerTest < ActionDispatch::IntegrationTest
  test "should get posts" do
    get post_dog_posts_url
    assert_response :success
  end
end
