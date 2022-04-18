Rails.application.routes.draw do
  root to: 'homes#top'
  get '/manual' => 'homes#manual'
  
  get '/schedules/:event_id' => 'schedules#show' , as: 'schedule'
  resources :schedule_answers, only: [:new, :create, :edit, :update, :destroy]

  namespace :host do
    get '/mypage' => 'homes#index'
    
    post '/events/event_cofirmation'
    resources :events, only: [:new, :create]

    get '/event_schedules/:id/schedule_confirmation' => 'event_schedules#schedule_confirmation'
    resources :event_schedules, only: [:show, :update]
  end

  devise_for :hosts, controllers: {
  registrations: "host/registrations",
  sessions: 'host/sessions'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
