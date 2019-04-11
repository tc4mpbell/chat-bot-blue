class CreateChatBotBlueMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_bot_blue_messages do |t|
      t.references :chat, foreign_key: {to_table: :chat_bot_blue_chats }
      t.text :content
      
      t.integer :sender_id
      t.string :sender_session_id

      t.timestamps
    end
  end
end
