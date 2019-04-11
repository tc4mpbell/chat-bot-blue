module ChatBotBlue
  module ApplicationHelper
    def chat_bot name
      render partial: '/chat_bot_blue/chats/widget'
    end
  end
end
