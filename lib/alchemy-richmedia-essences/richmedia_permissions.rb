module Alchemy
  class RichmediaPermissions
    include CanCan::Ability

    def initialize(user)
      @user ||= user
      @user ? user_role_rules : alchemy_guest_user_rules
    end

    module GuestUser
      def alchemy_guest_user_rules
        can :read, Alchemy::EssenceVideo
        can :read, Alchemy::EssenceAudio
      end
    end

    module MemberUser
      include Alchemy::Permissions::GuestUser

      def alchemy_member_rules
        alchemy_guest_user_rules
      end
    end

    module AuthorUser
      include Alchemy::Permissions::MemberUser

      def alchemy_author_rules
        alchemy_member_rules
        can :manage, Alchemy::EssenceVideo
        can :manage, Alchemy::EssenceAudio
      end
    end

    module EditorUser
      include Alchemy::Permissions::AuthorUser

      def alchemy_editor_rules
        alchemy_author_rules
      end
    end

    module AdminUser
      include Alchemy::Permissions::EditorUser

      def alchemy_admin_rules
        alchemy_editor_rules
      end
    end

    private

    def user_role_rules
      return alchemy_guest_user_rules if @user.alchemy_roles.blank?
      @user.alchemy_roles.each do |role|
        exec_role_rules(role)
      end
    end

    def exec_role_rules(role)
      meth = :"alchemy_#{role}_rules"
      send(meth) if respond_to?(meth)
    end

    include GuestUser
    include MemberUser
    include AuthorUser
    include EditorUser
    include AdminUser
  end
end
