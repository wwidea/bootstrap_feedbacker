# frozen_string_literal: true

require 'test_helper'

module BootstrapFeedbacker
  class RemarksControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get new_remark_path(format: :turbo_stream)
      assert_response :success
    end

    test "should create remark" do
      assert_difference('Remark.count') do
        post remarks_path, params: { remark: { content: 'testing' }, format: :turbo_stream }
      end
      assert_response :success
    end
  end
end
