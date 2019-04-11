Rails.application.routes.draw do
  root to: 'dashboard#welcome'

  mount ChatBotBlue::Engine => "/chat_bot_blue"
end
