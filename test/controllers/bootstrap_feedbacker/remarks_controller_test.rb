require 'test_helper'

module BootstrapFeedbacker
  class RemarksControllerTest < ActionController::TestCase
    setup do
      @remark = bootstrap_feedbacker_remarks(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:remarks)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create remark" do
      assert_difference('Remark.count') do
        post :create, remark: { content: @remark.content, source_url: @remark.source_url, user_id: @remark.user_id }
      end

      assert_redirected_to remark_path(assigns(:remark))
    end

    test "should show remark" do
      get :show, id: @remark
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @remark
      assert_response :success
    end

    test "should update remark" do
      patch :update, id: @remark, remark: { content: @remark.content, source_url: @remark.source_url, user_id: @remark.user_id }
      assert_redirected_to remark_path(assigns(:remark))
    end

    test "should destroy remark" do
      assert_difference('Remark.count', -1) do
        delete :destroy, id: @remark
      end

      assert_redirected_to remarks_path
    end
  end
end
