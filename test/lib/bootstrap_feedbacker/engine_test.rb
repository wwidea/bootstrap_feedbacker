# frozen_string_literal: true

require "test_helper"

module BootstrapFeedbacker
  class EngineTest < ActiveSupport::TestCase
    test "should return engine name" do
      assert_equal "bootstrap_feedbacker", BootstrapFeedbacker::Engine.engine_name
    end
  end
end
