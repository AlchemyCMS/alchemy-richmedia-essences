module Alchemy
  class Admin::EssenceVideosController < Alchemy::Admin::BaseController

    before_filter :load_essence

    def edit
      render :layout => false
    end

    def update
      @essence_video.update_attributes(params[:essence_video])
    end

  private

    def load_essence
      @essence_video = EssenceVideo.find(params[:id])
    end

  end
end
