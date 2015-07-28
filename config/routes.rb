Alchemy::Engine.routes.draw do
  namespace :admin do
    resources :essence_audios
    resources :essence_videos
  end
end
