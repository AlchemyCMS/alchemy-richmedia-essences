module Alchemy
  class Admin::EssenceFlashesController < Alchemy::Admin::BaseController

    before_filter :load_essence

    def edit
      render :layout => false
    end

    def update
      @essence_flash.update_attributes(params[:essence_flash])
    end

  private

    def load_essence
      @essence_flash = EssenceFlash.find(params[:id])
    end

  end
end
