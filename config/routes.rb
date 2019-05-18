Rails.application.routes.draw do
  get 'artist/:name'
  get 'artist/:album'
  root 'billboards#index'

  resources :billboards
end
