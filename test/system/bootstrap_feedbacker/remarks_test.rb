# frozen_string_literal: true

require "application_system_test_case"

class RemarksTest < ApplicationSystemTestCase
  test "creating a remark" do
    open_feedback_form

    assert_selector "div", text: I18n.t("bootstrap_feedbacker.remarks.form.greeting")
    fill_in "remark[content]", with: "I need help!"
    click_on "Submit Feedback"

    assert_selector "div", text: I18n.t("bootstrap_feedbacker.remarks.thank_you.message")
  end

  test "failing to create a remark" do
    BootstrapFeedbacker::Remark.any_instance.expects(:valid?).returns(false)
    open_feedback_form
    click_on "Submit Feedback"

    assert_selector "div", text: I18n.t("bootstrap_feedbacker.remarks.error.message")
  end

  private

  def open_feedback_form
    visit dashboard_path
    click_on "Feedback"
  end
end
