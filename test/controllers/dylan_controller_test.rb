require 'test_helper'

class DylanControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get dylan_test_url
    assert_response :success
  end

end
