require_dependency "chat_bot_blue/application_controller"

module ChatBotBlue
  class MessagesController < ApplicationController
    def create
      @chat = Chat.find(params[:chat_id])
      @message = @chat.messages.new(message_params)

      if @message.save
        flash[:success] = "Message successfully created"
        ChatChannel.broadcast_to(
          @chat,
          content: render_to_string(@message)
        )

        # need this b/c render_to_string sets the response content 
        # type (boo): https://github.com/rails/rails/issues/14173
        respond_to do |format|
          format.js
        end
      else
        flash[:error] = "Something went wrong"
      end
    end

    private

    def message_params
      params.require(:message).permit(:content)
    end
  end
end
