class AlchemyEssenceAudioHtml5Update < ActiveRecord::Migration[4.2]
  def up
    change_table :alchemy_essence_audios do |t|
      t.boolean :autoplay, default: false
      t.boolean :loop,     default: false
      t.boolean :muted,    default: false
      t.rename :show_navigation, :controls
      t.remove :width
      t.remove :height
      t.remove :show_eq
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
