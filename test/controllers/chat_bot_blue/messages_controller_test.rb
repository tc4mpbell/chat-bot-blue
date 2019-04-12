require 'test_helper'

module ChatBotBlue
  class MessagesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    def test_create
      @chat = chat_bot_blue_chats(:one)
      @message = nil
      post chat_messages_path(@chat, format: :js), params: { message: { content: 'test' } }
      assert_response :success
    end
  end
end
