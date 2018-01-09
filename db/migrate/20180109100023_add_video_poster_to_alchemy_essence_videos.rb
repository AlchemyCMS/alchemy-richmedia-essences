class AddVideoPosterToAlchemyEssenceVideos < ActiveRecord::Migration[4.2]
  def change
    add_column :alchemy_essence_videos, :picture_id, :integer
  end
end
