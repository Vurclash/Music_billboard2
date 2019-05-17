Rails.application.routes.draw do
  root 'billboards#create'

  resources :billboards
end
