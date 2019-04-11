module ChatBotBlue
  class Engine < ::Rails::Engine
    isolate_namespace ChatBotBlue

    initializer 'local_helper.action_controller' do
      ActiveSupport.on_load :action_controller do
        helper ChatBotBlue::ApplicationHelper
      end
    end
  end
end
