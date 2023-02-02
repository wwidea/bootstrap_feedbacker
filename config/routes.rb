# frozen_string_literal: true

BootstrapFeedbacker::Engine.routes.draw do
  resources :remarks, only: %i[new create]
end
