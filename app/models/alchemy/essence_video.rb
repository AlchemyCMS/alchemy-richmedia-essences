module Alchemy
  class EssenceVideo < ActiveRecord::Base
    acts_as_essence ingredient_column: 'attachment',
      preview_text_method: 'name'

    belongs_to :attachment, optional: true
    belongs_to :picture, optional: true

    def thumbnail_url(options = {})
      return if picture.nil?

      crop = crop_values_present? || content.settings_value(:crop, options)
      size = render_size || content.settings_value(:size, options)

      options = {
        size: thumbnail_size(size, crop),
        crop: !!crop,
        crop_from: crop_from.presence,
        crop_size: crop_size.presence,
        flatten: true,
        format: picture.image_file_format
      }

      picture.url(options)
    end
  end
end
