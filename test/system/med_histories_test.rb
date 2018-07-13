require "application_system_test_case"

class MedHistoriesTest < ApplicationSystemTestCase
  setup do
    @med_history = med_histories(:one)
  end

  test "visiting the index" do
    visit med_histories_url
    assert_selector "h1", text: "Med Histories"
  end

  test "creating a Med history" do
    visit med_histories_url
    click_on "New Med History"

    fill_in "Patient", with: @med_history.patient_id
    fill_in "Q1", with: @med_history.q1
    fill_in "Q10", with: @med_history.q10
    fill_in "Q11", with: @med_history.q11
    fill_in "Q12", with: @med_history.q12
    fill_in "Q2", with: @med_history.q2
    fill_in "Q3", with: @med_history.q3
    fill_in "Q4", with: @med_history.q4
    fill_in "Q5", with: @med_history.q5
    fill_in "Q6", with: @med_history.q6
    fill_in "Q7", with: @med_history.q7
    fill_in "Q8", with: @med_history.q8
    fill_in "Q9", with: @med_history.q9
    click_on "Create Med history"

    assert_text "Med history was successfully created"
    click_on "Back"
  end

  test "updating a Med history" do
    visit med_histories_url
    click_on "Edit", match: :first

    fill_in "Patient", with: @med_history.patient_id
    fill_in "Q1", with: @med_history.q1
    fill_in "Q10", with: @med_history.q10
    fill_in "Q11", with: @med_history.q11
    fill_in "Q12", with: @med_history.q12
    fill_in "Q2", with: @med_history.q2
    fill_in "Q3", with: @med_history.q3
    fill_in "Q4", with: @med_history.q4
    fill_in "Q5", with: @med_history.q5
    fill_in "Q6", with: @med_history.q6
    fill_in "Q7", with: @med_history.q7
    fill_in "Q8", with: @med_history.q8
    fill_in "Q9", with: @med_history.q9
    click_on "Update Med history"

    assert_text "Med history was successfully updated"
    click_on "Back"
  end

  test "destroying a Med history" do
    visit med_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Med history was successfully destroyed"
  end
end
