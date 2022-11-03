# frozen_string_literal: true

module BootstrapFeedbacker
  class Engine < ::Rails::Engine
    isolate_namespace BootstrapFeedbacker

    config.to_prepare do
      ::ApplicationController.helper(ModalsHelper)
    end

    initializer "bootstrap_feedbacker.assets" do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += %w( bootstrap_feedbacker.js remarks_controller.js )
      end
    end

    initializer "bootstrap_feedbacker.importmap", before: "importmap" do |app|
      if Rails.application.respond_to?(:importmap)
        app.config.importmap.paths << Engine.root.join("config/importmap.rb")
      end
    end
  end
end
