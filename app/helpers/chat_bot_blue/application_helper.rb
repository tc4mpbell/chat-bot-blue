module ChatBotBlue
  module ApplicationHelper
    def chat_bot name
      render partial '/chat_widget/widget'
    end
  end
end
