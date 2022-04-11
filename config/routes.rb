Rails.application.routes.draw do
  root to: 'homes#top'
  get '/manual' => 'homes#manual'
  resources :schedules, only: [:show]
  resources :schedule_answers, only: [:new, :create, :edit, :update, :destroy]
  
  namespace :host do
    get 'events/new'
    post 'events/create'

    get 'homes/index'

    get 'event_schedules/show'
    get 'event_schedules/schedule_confirmation'
    patch 'event_schedules/update'
  end



  devise_for :hosts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
