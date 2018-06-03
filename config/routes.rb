# frozen_string_literal: true

Rails.application.routes.draw do
  root 'events#index'

  devise_for :users

  resources :events do
    resources :attendances, only: %i[create destroy]
  end
end
