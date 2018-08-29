require "application_system_test_case"

class TeasTest < ApplicationSystemTestCase
  setup do
    @tea = teas(:one)
  end

  test "visiting the index" do
    visit teas_url
    assert_selector "h1", text: "Teas"
  end

  test "creating a Tea" do
    visit teas_url
    click_on "New Tea"

    fill_in "Date", with: @tea.date
    fill_in "Evening Qty", with: @tea.evening_qty
    fill_in "Final Total", with: @tea.final_total
    fill_in "Morning Qty", with: @tea.morning_qty
    fill_in "Price", with: @tea.price
    fill_in "Total Price", with: @tea.total_price
    fill_in "Total Qty", with: @tea.total_qty
    click_on "Create Tea"

    assert_text "Tea was successfully created"
    click_on "Back"
  end

  test "updating a Tea" do
    visit teas_url
    click_on "Edit", match: :first

    fill_in "Date", with: @tea.date
    fill_in "Evening Qty", with: @tea.evening_qty
    fill_in "Final Total", with: @tea.final_total
    fill_in "Morning Qty", with: @tea.morning_qty
    fill_in "Price", with: @tea.price
    fill_in "Total Price", with: @tea.total_price
    fill_in "Total Qty", with: @tea.total_qty
    click_on "Update Tea"

    assert_text "Tea was successfully updated"
    click_on "Back"
  end

  test "destroying a Tea" do
    visit teas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tea was successfully destroyed"
  end
end
