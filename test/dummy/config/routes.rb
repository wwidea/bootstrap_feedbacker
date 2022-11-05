Rails.application.routes.draw do
  resource :dashboard, only: :show
  root to: 'dashboards#show'

  mount BootstrapFeedbacker::Engine => "/bootstrap_feedbacker"
end
