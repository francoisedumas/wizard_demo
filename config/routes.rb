Rails.application.routes.draw do
  resources :houses
  resources :build_house, only: [:update, :show], controller: 'steps_controllers/house_steps'
end
