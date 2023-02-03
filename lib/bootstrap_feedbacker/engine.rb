# frozen_string_literal: true

module BootstrapFeedbacker
  class Engine < ::Rails::Engine
    isolate_namespace BootstrapFeedbacker

    config.to_prepare do
      ::ApplicationController.helper(ModalsHelper)
    end

    initializer "bootstrap_feedbacker.assets" do
      Rails.application.config.assets.precompile += %w[controllers/bootstrap_feedbacker/remarks_controller.js] if Rails.application.config.respond_to?(:assets)
    end

    initializer "bootstrap_feedbacker.importmap", before: "importmap" do |app|
      app.config.importmap.paths << Engine.root.join("config/importmap.rb") if Rails.application.respond_to?(:importmap)
    end
  end
end
