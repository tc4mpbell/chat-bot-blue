module ChatBotBlue
  module ApplicationHelper
    def chat_bot name
      render '/chat_bot_blue/chats/widget'
    end
  end
end
