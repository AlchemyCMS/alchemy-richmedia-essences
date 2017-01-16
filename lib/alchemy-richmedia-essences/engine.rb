module Alchemy
  module Richmedia
    module Essences
      class Engine < Rails::Engine
        engine_name 'alchemy_richmedia_essences'
        config.mount_at = '/'
      end
    end
  end
end
