module Alchemy
  class Admin::EssenceAudiosController < Alchemy::Admin::BaseController

    before_filter :load_essence

    def edit
      render :layout => false
    end

    def update
      @essence_audio.update_attributes(params[:essence_audio])
    end

  private

    def load_essence
      @essence_audio = EssenceAudio.find(params[:id])
    end

  end
end
