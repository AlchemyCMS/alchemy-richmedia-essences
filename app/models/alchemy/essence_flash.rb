module Alchemy
  class EssenceFlash < ActiveRecord::Base

    attr_accessible(
      :width,
      :height,
      :player_version,
      :attachment_id
    )

    acts_as_essence(
      :ingredient_column => :attachment,
      :preview_text_method => :name
    )

    belongs_to :attachment

  end
end
