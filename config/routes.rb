Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teams, only: %i[index show] do
    resources :players, only: %i[index]
  end
  resources :players, only: %i[show]
end
