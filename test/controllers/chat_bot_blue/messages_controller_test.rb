require 'test_helper'

module ChatBotBlue
  class MessagesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get create" do
      get messages_create_url
      assert_response :success
    end

    test "should get update" do
      get messages_update_url
      assert_response :success
    end

  end
end
