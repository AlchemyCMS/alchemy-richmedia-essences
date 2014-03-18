require "alchemy-richmedia-essences/ability"

module Alchemy
  module Richmedia
    module Essences
      class Engine < Rails::Engine
        engine_name 'alchemy_richmedia_essences'
        config.mount_at = '/'

        initializer "alchemy_richmedia_essences.register_ability" do
          Alchemy.register_ability Alchemy::Richmedia::Essences::Ability
        end
      end
    end
  end
end
