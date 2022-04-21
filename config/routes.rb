Rails.application.routes.draw do
  root to: 'homes#top'
  get '/manual' => 'homes#manual'

  get '/schedules/:event_id' => 'schedules#show' , as: 'schedule'

  get '/schedule_answers/:event_id/new' => 'schedule_answers#new' , as: 'new_schedule_answer'
  post '/schedule_answers/:event_id/answer_confirmation' => 'schedule_answers#answer_confirmation' , as: 'answer_confirmation_schedule_answer'
  post '/schedule_answers/:event_id' => 'schedule_answers#answer_confirmation' , as: 'create_schedule_answer'
  get '/schedule_answers/:event_id/pass' => 'schedule_answers#answer' , as: 'answer_schedule_answer'
  post '/schedule_answers/:event_id/pass' => 'schedule_answers#answer_pass' , as: 'answer_pass_schedule_answer'
  get '/schedule_answers/:event_id/:id/edit' => 'schedule_answers#edit' , as: 'edit_schedule_answer'
  post '/schedule_answers/:event_id/:id' => 'schedule_answers#update' , as: 'update_schedule_answer'
  post '/schedule_answers/:event_id/:id' => 'schedule_answers#destroy' , as: 'destroy_schedule_answer'

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
