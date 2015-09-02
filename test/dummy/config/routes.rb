Rails.application.routes.draw do

  root to: 'dashboard#index', as: ''

  mount BootstrapFeedbacker::Engine => "/bootstrap_feedbacker"
end
