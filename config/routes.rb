Rails.application.routes.draw do
  root 'application#hello'
  resources :image
end
