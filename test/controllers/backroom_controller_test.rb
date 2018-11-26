require 'test_helper'

class BackroomControllerTest < ActionDispatch::IntegrationTest
  test "should get user_index" do
    get backroom_user_index_url
    assert_response :success
  end

end
