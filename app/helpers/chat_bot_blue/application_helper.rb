module ChatBotBlue
  module ApplicationHelper
    def chat_bot name
      render partial: '/chat_bot_blue/chats/widget', layout: '/chat_bot_blue/chats/widget_container'
    end
  end
end
