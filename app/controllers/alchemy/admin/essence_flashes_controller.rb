module Alchemy
  class Admin::EssenceFlashesController < Alchemy::Admin::BaseController
    authorize_resource class: Alchemy::EssenceFlash
    before_filter :load_essence

    def update
      @essence_flash.update(essence_flash_params)
    end

    private

    def load_essence
      @essence_flash = EssenceFlash.find(params[:id])
    end

    def essence_flash_params
      params.require(:essence_flash).permit(
        :width,
        :height,
        :player_version,
        :attachment_id
      )
    end
  end
end
