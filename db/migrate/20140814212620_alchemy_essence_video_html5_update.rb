class AlchemyEssenceVideoHtml5Update < ActiveRecord::Migration
  def up
    change_table :alchemy_essence_videos do |t|
      t.change :width, :string
      t.change :height, :string
      t.rename :auto_play, :autoplay
      t.rename :show_navigation, :controls
    end

    add_column :alchemy_essence_videos, :loop, :boolean, default: false
    add_column :alchemy_essence_videos, :muted, :boolean, default: false
  end

  def down
    change_table :alchemy_essence_videos do |t|
      t.change :width, :integer
      t.change :height, :integer
      t.rename :autoplay, :auto_play
      t.rename :controls, :show_navigation
    end

    remove_column :alchemy_essence_videos, :loop, :boolean
    remove_column :alchemy_essence_videos, :muted, :boolean
  end
end
