# frozen_string_literal: true

module BootstrapFeedbacker
  class FeedbackMailerPreview < ActionMailer::Preview
    def feedback
      user = User.new(name: "Example User", email: "user@example.com")
      remark = Remark.new(user:, source_url: "https://example.com/", content: "Example feedback")

      FeedbackMailer.feedback(remark)
    end
  end
end
