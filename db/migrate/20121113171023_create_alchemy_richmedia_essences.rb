class CreateAlchemyRichmediaEssences < ActiveRecord::Migration
  def change
    return if table_exists?(:alchemy_essence_audios)

    create_table "alchemy_essence_audios" do |t|
      t.integer  "attachment_id"
      t.integer  "width",           :default => 400
      t.integer  "height",          :default => 300
      t.boolean  "show_eq",         :default => true
      t.boolean  "show_navigation", :default => true
      t.integer  "creator_id"
      t.integer  "updater_id"
      t.datetime "created_at",      :null => false
      t.datetime "updated_at",      :null => false
    end

    create_table "alchemy_essence_flashes" do |t|
      t.integer  "attachment_id"
      t.integer  "width",          :default => 400
      t.integer  "height",         :default => 300
      t.string   "player_version", :default => "9.0.28"
      t.integer  "creator_id"
      t.integer  "updater_id"
      t.datetime "created_at",     :null => false
      t.datetime "updated_at",     :null => false
    end

    create_table "alchemy_essence_videos" do |t|
      t.integer  "attachment_id"
      t.integer  "width"
      t.integer  "height"
      t.boolean  "allow_fullscreen", :default => true
      t.boolean  "auto_play",        :default => false
      t.boolean  "show_navigation",  :default => true
      t.integer  "creator_id"
      t.integer  "updater_id"
      t.datetime "created_at",       :null => false
      t.datetime "updated_at",       :null => false
    end

  end
end
