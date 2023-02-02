# frozen_string_literal: true

Rails.application.routes.draw do
  root "dashboards#show"

  resource :dashboard, only: :show

  mount BootstrapFeedbacker::Engine => "/bootstrap_feedbacker"
end
