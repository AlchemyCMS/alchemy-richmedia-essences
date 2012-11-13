authorization do

  role :author do
    has_permission_on :alchemy_admin_essence_audios, :to => [:edit, :update]
    has_permission_on :alchemy_admin_essence_flashes, :to => [:edit, :update]
    has_permission_on :alchemy_admin_essence_videos, :to => [:edit, :update]
  end

end
