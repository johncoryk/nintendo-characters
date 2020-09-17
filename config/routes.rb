Rails.application.routes.draw do
  resources :characters
  get '/' => 'characters#index'
  resources :characters
end
