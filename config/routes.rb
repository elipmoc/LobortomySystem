Rails.application.routes.draw do
  root 'image_search#top'
  post '/search', to: 'image_search#search'
  get '/search', to: 'image_search#top'
  resources :image
  resources :chara_mapping
end
