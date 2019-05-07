require 'test_helper'

class BattleControllerTest < ActionDispatch::IntegrationTest
  test "should get combat" do
    get battle_combat_url
    assert_response :success
  end

end
