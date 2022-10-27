# frozen_string_literal: true

module BootstrapFeedbacker
  class Engine < ::Rails::Engine
    isolate_namespace BootstrapFeedbacker

    config.to_prepare do
      ::ApplicationController.helper(ModalsHelper)
    end
  end
end
