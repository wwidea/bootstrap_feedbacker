module BootstrapFeedbacker
  class FeedbackMailer < ActionMailer::Base
    def feedback(remark)
      @remark = remark
      mail(
        to:         BootstrapFeedbacker::SETTINGS.email_to,
        from:       BootstrapFeedbacker::SETTINGS.email_to,
        reply_to:   remark.user.email,
        subject:    "#{BootstrapFeedbacker::SETTINGS.email_prefix} Feedback Notification"
      )
    end
  end
end
