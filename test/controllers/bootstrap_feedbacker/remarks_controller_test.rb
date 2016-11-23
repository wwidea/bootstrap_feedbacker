require 'test_helper'

module BootstrapFeedbacker
  class RemarksControllerTest < ActionDispatch::IntegrationTest
    setup do
      @remark = bootstrap_feedbacker_remarks(:remark)
      @routes = Engine.routes
    end

    test "should create remark" do
      assert_difference('Remark.count') do
        post @routes.url_helpers.remarks_path, params: { remark: { content: @remark.content }, format: :js }
      end
      assert_response 200
    end
  end
end
