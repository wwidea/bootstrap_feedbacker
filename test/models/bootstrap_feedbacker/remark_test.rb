# frozen_string_literal: true

require 'test_helper'

module BootstrapFeedbacker
  class RemarkTest < ActiveSupport::TestCase
    test 'should return user_name' do
      assert_equal 'Tiffany Account', Remark.first.user_name
    end
  end
end
