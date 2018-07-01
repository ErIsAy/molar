require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Address", with: @patient.address
    fill_in "Apt Suite", with: @patient.apt_suite
    fill_in "Birth Date", with: @patient.birth_date
    fill_in "City", with: @patient.city
    fill_in "Email", with: @patient.email
    fill_in "F Name", with: @patient.f_name
    fill_in "Gender", with: @patient.gender
    fill_in "L Name", with: @patient.l_name
    fill_in "Phone", with: @patient.phone
    fill_in "State", with: @patient.state
    fill_in "Zip", with: @patient.zip
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Address", with: @patient.address
    fill_in "Apt Suite", with: @patient.apt_suite
    fill_in "Birth Date", with: @patient.birth_date
    fill_in "City", with: @patient.city
    fill_in "Email", with: @patient.email
    fill_in "F Name", with: @patient.f_name
    fill_in "Gender", with: @patient.gender
    fill_in "L Name", with: @patient.l_name
    fill_in "Phone", with: @patient.phone
    fill_in "State", with: @patient.state
    fill_in "Zip", with: @patient.zip
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
