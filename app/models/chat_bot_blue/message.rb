module ChatBotBlue
  class Message < ApplicationRecord
    belongs_to :chat
  end
end
