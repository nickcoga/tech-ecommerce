# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :stores, only: %i[index show create update destroy]
  resources :offers, only: %i[index show create update destroy]
  resources :categories, only: %i[index show create update destroy]
end
