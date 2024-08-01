require "application_system_test_case"

class VariationsTest < ApplicationSystemTestCase
  setup do
    @variation = variations(:one)
  end

  test "visiting the index" do
    visit variations_url
    assert_selector "h1", text: "Variations"
  end

  test "should create variation" do
    visit variations_url
    click_on "New variation"

    fill_in "Product", with: @variation.product_id
    fill_in "Quantity", with: @variation.quantity
    fill_in "Size", with: @variation.size
    click_on "Create Variation"

    assert_text "Variation was successfully created"
    click_on "Back"
  end

  test "should update Variation" do
    visit variation_url(@variation)
    click_on "Edit this variation", match: :first

    fill_in "Product", with: @variation.product_id
    fill_in "Quantity", with: @variation.quantity
    fill_in "Size", with: @variation.size
    click_on "Update Variation"

    assert_text "Variation was successfully updated"
    click_on "Back"
  end

  test "should destroy Variation" do
    visit variation_url(@variation)
    click_on "Destroy this variation", match: :first

    assert_text "Variation was successfully destroyed"
  end
end
