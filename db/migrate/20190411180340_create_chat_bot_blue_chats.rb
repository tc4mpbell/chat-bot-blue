class CreateChatBotBlueChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_bot_blue_chats do |t|

      t.timestamps
    end
  end
end
