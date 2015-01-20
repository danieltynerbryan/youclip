Rails.application.routes.draw do
  get 'youtube/index'
  
  get 'youtube/:videoID' => 'youtube#new'

  resources :clips

  root :to => "youtube#index"
 end
