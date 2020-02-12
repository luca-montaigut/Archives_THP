require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources:gossip" do
    get gossips_resources:gossip_url
    assert_response :success
  end

end
