ChatBotBlue::Engine.routes.draw do
  resources :chats do 
    resource :messages
  end
  
  # root to: 'chats#widget'
end
