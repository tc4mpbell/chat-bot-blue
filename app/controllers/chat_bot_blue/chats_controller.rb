require_dependency "chat_bot_blue/application_controller"

module ChatBotBlue
  class ChatsController < ApplicationController
    def widget
    end

    def create
      @chat = Chat.new
      if @chat.save
        flash[:success] = "Chat successfully created"
      else
        flash[:error] = "Something went wrong"
      end
    end
    
  end
end
