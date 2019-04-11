require_dependency "chat_bot_blue/application_controller"

module ChatBotBlue
  class ChatsController < ApplicationController
    def widget
    end

    def create
      @chat = params[:chat_id].present? ? Chat.find(params[:chat_id]) : Chat.new
      if @chat.persisted? || @chat.save
        flash[:success] = "Chat successfully created"
      else
        flash[:error] = "Something went wrong"
      end
    end
    
  end
end
