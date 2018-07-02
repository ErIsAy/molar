require "application_system_test_case"

class RecurringEventsTest < ApplicationSystemTestCase
  setup do
    @recurring_event = recurring_events(:one)
  end

  test "visiting the index" do
    visit recurring_events_url
    assert_selector "h1", text: "Recurring Events"
  end

  test "creating a Recurring event" do
    visit recurring_events_url
    click_on "New Recurring Event"

    fill_in "Anchor", with: @recurring_event.anchor
    fill_in "Color", with: @recurring_event.color
    fill_in "Frequency", with: @recurring_event.frequency
    fill_in "Title", with: @recurring_event.title
    click_on "Create Recurring event"

    assert_text "Recurring event was successfully created"
    click_on "Back"
  end

  test "updating a Recurring event" do
    visit recurring_events_url
    click_on "Edit", match: :first

    fill_in "Anchor", with: @recurring_event.anchor
    fill_in "Color", with: @recurring_event.color
    fill_in "Frequency", with: @recurring_event.frequency
    fill_in "Title", with: @recurring_event.title
    click_on "Update Recurring event"

    assert_text "Recurring event was successfully updated"
    click_on "Back"
  end

  test "destroying a Recurring event" do
    visit recurring_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recurring event was successfully destroyed"
  end
end
