module Alchemy
  class Admin::EssenceVideosController < Alchemy::Admin::BaseController
    authorize_resource class: Alchemy::EssenceVideo
    before_filter :load_essence, except: :update

    def update
      @essence_video = Alchemy::EssenceVideo.find(params[:id])
      @essence_video.update(essence_video_params)
    end

    private

    def load_essence
      @essence_video = Alchemy::Content.find(params[:id]).essence
    end

    def essence_video_params
      params.require(:essence_video).permit(
        :width,
        :height,
        :autoplay,
        :controls,
        :loop,
        :muted,
        :attachment_id
      )
    end
  end
end
