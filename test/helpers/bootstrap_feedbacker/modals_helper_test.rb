# frozen_string_literal: true

require 'test_helper'

module BootstrapFeedbacker
  class ModalsHelperTest < ActionView::TestCase
    test 'should return bootstrap_feedbacker_link' do
      assert_includes(bootstrap_feedbacker_link, 'Feedback')
    end

    test 'should return bootstrap_feedbacker_modal' do
      assert_includes(bootstrap_feedbacker_modal, BootstrapFeedbacker::SETTINGS.modal_id)
    end
  end
end
