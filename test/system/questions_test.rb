require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test 'visiting /ask renders the form' do
    puts questions_ask_url
    visit questions_ask_url
    fill_in 'question', with: 'what is this?'
    click_on 'Ask!'
    assert_selector '.answer', text: 'Silly question, get dressed and go to work!'
    take_screenshot
  end
end
