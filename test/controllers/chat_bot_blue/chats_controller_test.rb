require 'test_helper'

module ChatBotBlue
  class ChatsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get widget" do
      get chats_widget_url
      assert_response :success
    end

  end
end
