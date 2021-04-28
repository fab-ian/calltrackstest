# frozen_string_literal: true

Rails.application.routes.draw do
  root 'members#new'

  get '/members/thank_you' => 'members#thank_you'

  resources :members, only: %i[new create index]
end
