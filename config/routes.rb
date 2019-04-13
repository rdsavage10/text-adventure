Rails.application.routes.draw do
  get 'current_room' => 'game#current_room'
  get 'start_menu' => 'game#start'
  get 'index' => 'game#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
