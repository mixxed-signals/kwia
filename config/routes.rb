Rails.application.routes.draw do
  root 'events#home'
  get '/month', to: 'events#month', as: 'months_all'

  scope '/:month' do
    resources :events, path: 'events'
  end
end
