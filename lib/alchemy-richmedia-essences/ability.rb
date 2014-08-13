module Alchemy
  module Richmedia
    module Essences
      class Ability
        include CanCan::Ability

        def initialize(user)
          return if user.nil?
          if user.has_role?(:author) || user.has_role?(:editor) || user.has_role?(:admin)
            can :manage, Alchemy::EssenceAudio
            can :manage, Alchemy::EssenceFlash
            can :manage, Alchemy::EssenceVideo
          end
        end
      end
    end
  end
end
