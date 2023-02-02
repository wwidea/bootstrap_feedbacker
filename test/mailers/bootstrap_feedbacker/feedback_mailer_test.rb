# frozen_string_literal: true

require "test_helper"

module BootstrapFeedbacker
  class FeedbackMailerTest < ActionMailer::TestCase
    test "should send parent feedback" do
      mail = BootstrapFeedbacker::FeedbackMailer.feedback(remark)
      assert_equal "[FEEDBACKER] Feedback Notification",  mail.subject
      assert_equal %w(feedback@example.com),              mail.to
      assert_equal %w(feedback@example.com),              mail.from
      assert_equal %w(tiffany@example.com),               mail.reply_to
      assert_match remark.content,                        mail.body.encoded
      assert_match remark.source_url,                     mail.body.encoded
    end

    private

    def remark
      bootstrap_feedbacker_remarks(:remark)
    end
  end
end
