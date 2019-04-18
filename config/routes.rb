Rails.application.routes.draw do
  devise_for :users
  root 'game#start'
  get 'current_room' => 'game#current_room'
  get 'start_menu' => 'game#start'
  get 'index' => 'game#index'
  post 'pickup' => 'game#pickup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
