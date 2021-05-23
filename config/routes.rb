# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :stores, only: %i[index show create update destroy]
  resources :offers, only: %i[index show create update destroy]
  resources :categories, only: %i[index show create update destroy]
  resources :products, only: %i[index show create update destroy]
  resources :orders, only: %i[index show create update destroy]
  resources :users, only: %i[index show create update destroy] do
    resources :addresses, only: %i[index show create update destroy]
    resources :invoices, only: %i[index show create update destroy]
  end
  # resources :invoices, only: %i[index show create update destroy] # TODO: is this route necessary for metrics?
  # resources :user_addresses, only: %i[index show create update destroy]
end
