require "application_system_test_case"

class RemarksTest < ApplicationSystemTestCase
  test "creating a remark" do
    visit dashboard_path
    click_link 'Feedback'
    assert_selector 'div', text: "What's on your mind?"
    fill_in "remark[content]", with: 'I need help!'
    click_on 'Submit Feedback'
    assert_selector 'div', text: 'Thank you for your feedback!'
  end
end
