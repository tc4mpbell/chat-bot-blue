module ChatBotBlue
  class Chat < ApplicationRecord
    has_many :messages
  end
end
