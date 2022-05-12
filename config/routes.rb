Rails.application.routes.draw do
  root to: 'homes#top'
  get '/manual' => 'homes#manual'

  get '/schedules/:token' => 'schedules#show' , as: 'schedule', param: :token

  get '/schedule_answers/:token/new' => 'schedule_answers#new' , as: 'new_schedule_answer'
  post '/schedule_answers/:token/back' => 'schedule_answers#back' , as: 'back_schedule_answer'
  post '/schedule_answers/:token/answer_confirmation' => 'schedule_answers#answer_confirmation' , as: 'answer_confirmation_schedule_answer'
  post '/schedule_answers/:token' => 'schedule_answers#create' , as: 'create_schedule_answer'
  get '/schedule_answers/:id/pass' => 'schedule_answers#answer' , as: 'answer_schedule_answer'
  post '/schedule_answers/:id/pass' => 'schedule_answers#answer_pass' , as: 'answer_pass_schedule_answer'
  get '/schedule_answers/:id/edit' => 'schedule_answers#edit' , as: 'edit_schedule_answer'
  patch '/schedule_answers/:id' => 'schedule_answers#update' , as: 'update_schedule_answer'
  delete '/schedule_answers/:id' => 'schedule_answers#destroy' , as: 'destroy_schedule_answer'

  namespace :host do
    get '/mypage' => 'homes#index'

    post '/events/event_cofirmation'
    post '/events/back'
    patch '/events/update_nill/:id' => 'events#update_nill'
    resources :events, only: [:new, :create, :update]

    get '/event_schedules/:id/schedule_confirmation' => 'event_schedules#schedule_confirmation' , as: 'schedule_confirmation_event_schedule'
    resources :event_schedules, only: [:show]
  end

  devise_for :hosts, controllers: {
  registrations: "host/registrations",
  sessions: 'host/sessions'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
