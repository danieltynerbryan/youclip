Rails.application.routes.draw do
  get 'youtube/index'
  
  get 'youtube/:videoID' => 'youtube#new'
  
  get 'tags/:tag', to: 'youtube#index', as: :tag

  resources :clips

  root :to => "youtube#index"
 end
