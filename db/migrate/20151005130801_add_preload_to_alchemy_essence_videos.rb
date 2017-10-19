class AddPreloadToAlchemyEssenceVideos < ActiveRecord::Migration[4.2]
  def change
    add_column :alchemy_essence_videos, :preload, :string
  end
end
