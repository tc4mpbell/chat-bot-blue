require 'test_helper'

module ChatBotBlue
  class ChatsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get chats_url
      assert_response :success
    end

  end
end
