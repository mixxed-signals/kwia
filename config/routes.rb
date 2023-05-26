Rails.application.routes.draw do
  root 'events#home'
  get '/month', to: 'events#month', as: 'events_month'
  resources :events
end
