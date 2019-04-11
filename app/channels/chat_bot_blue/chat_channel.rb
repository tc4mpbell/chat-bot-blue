module ChatBotBlue
  class ChatChannel < ApplicationCable::Channel
    def subscribed
      puts "SUBSCRIBED TO CHAT #{params.inspect}"
      chat = Chat.find_by(id: params[:id]) || Chat.create
      stream_for chat
    end

    def unsubscribed
      # Any cleanup needed when channel is unsubscribed
      puts "UNSUB UNSUB"
    end
  end
end
