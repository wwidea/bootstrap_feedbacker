# frozen_string_literal: true

require "test_helper"

module BootstrapFeedbacker
  class FeedbackMailerTest < ActionMailer::TestCase
    test "should include email_prefix in subject" do
      assert_equal "[FEEDBACKER] Feedback Notification", feedback_mail.subject
    end

    test "should set address fields" do
      feedback_mail.tap do |mail|
        assert_equal %w[feedback@example.com],  mail.to
        assert_equal %w[feedback@example.com],  mail.from
        assert_equal %w[tiffany@example.com],   mail.reply_to
      end
    end

    test "should embed content and source_url in email body" do
      feedback_mail.tap do |mail|
        assert_match remark.content,    mail.body.encoded
        assert_match remark.source_url, mail.body.encoded
      end
    end

    private

    def feedback_mail
      BootstrapFeedbacker::FeedbackMailer.feedback(remark)
    end

    def remark
      bootstrap_feedbacker_remarks(:remark)
    end
  end
end
