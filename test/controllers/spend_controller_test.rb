require 'test_helper'

class SpendControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spend_new_url
    assert_response :success
  end

  test "should get create" do
    get spend_create_url
    assert_response :success
  end

end
