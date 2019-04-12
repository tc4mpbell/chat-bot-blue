module ChatBotBlue
  class Engine < ::Rails::Engine
    isolate_namespace ChatBotBlue

    initializer 'local_helper.action_controller' do
      ActiveSupport.on_load :action_controller do
        helper ChatBotBlue::ApplicationHelper
      end
    end

    initializer "chat_bot_blue.assets.precompile" do |app|
      app.config.assets.precompile += %w( application.js, chat_bot_blue/messages.css )
    end
  end
end
