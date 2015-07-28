class RemoveAlchemyEssenceFlashes < ActiveRecord::Migration
  def up
    drop_table :alchemy_essence_flashes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
