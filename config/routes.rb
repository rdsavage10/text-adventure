Rails.application.routes.draw do
  devise_for :users
  root 'game#start'
  get 'current_room' => 'game#current_room'
  post 'current_room' => 'game#current_room'
  get 'start_menu' => 'game#start'
  get 'index' => 'game#index'
  post 'pickup' => 'game#pickup'
  post 'drop' => 'game#drop'
  post 'new_game' => 'game#new_game'
  post 'continue_game' => 'game#continue_game'
  post 'game_over' => 'game#game_over'
  get 'combat' => 'battle#combat'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
