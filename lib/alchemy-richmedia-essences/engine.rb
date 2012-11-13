module Alchemy
  module Richmedia
    module Essences
      class Engine < Rails::Engine
        engine_name 'alchemy_richmedia_essences'
        config.mount_at = '/'

        initializer "alchemy_richmedia_essences.add_authorization_rules" do
          Alchemy::AuthEngine.get_instance.load(File.join(File.dirname(__FILE__), '../..', 'config/authorization_rules.rb'))
        end

      end
    end
  end
end
