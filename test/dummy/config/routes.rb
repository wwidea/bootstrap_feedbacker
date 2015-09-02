Rails.application.routes.draw do

  root to: 'dashboard#index'

  mount BootstrapFeedbacker::Engine => "/bootstrap_feedbacker"
end
