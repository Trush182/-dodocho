require 'test_helper'

class Seeker::SearchInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get seeker_search_infos_new_url
    assert_response :success
  end

end
