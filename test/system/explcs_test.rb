require "application_system_test_case"

class ExplcsTest < ApplicationSystemTestCase
  setup do
    @explc = explcs(:one)
  end

  test "visiting the index" do
    visit explcs_url
    assert_selector "h1", text: "Explcs"
  end

  test "creating a Explc" do
    visit explcs_url
    click_on "New Explc"

    fill_in "Additional conditions", with: @explc.additional_conditions
    fill_in "Amount", with: @explc.amount
    fill_in "Applicant", with: @explc.applicant
    fill_in "Available by", with: @explc.available_by
    fill_in "Available with", with: @explc.available_with
    fill_in "Beneficiary", with: @explc.beneficiary
    fill_in "Currency", with: @explc.currency
    fill_in "Documents required", with: @explc.documents_required
    fill_in "Drawee", with: @explc.drawee
    fill_in "Expiry date", with: @explc.expiry_date
    fill_in "Final destination", with: @explc.final_destination
    fill_in "Goods description", with: @explc.goods_description
    fill_in "Issue date", with: @explc.issue_date
    fill_in "Issuing bank", with: @explc.issuing_bank
    fill_in "Latest shipment date", with: @explc.latest_shipment_date
    fill_in "Lc number", with: @explc.lc_number
    fill_in "Partial shipment", with: @explc.partial_shipment
    fill_in "Port of discharge", with: @explc.port_of_discharge
    fill_in "Port of loading", with: @explc.port_of_loading
    fill_in "Remarks", with: @explc.remarks
    fill_in "Shipment from", with: @explc.shipment_from
    fill_in "Tenor", with: @explc.tenor
    fill_in "Transhipment", with: @explc.transhipment
    click_on "Create Explc"

    assert_text "Explc was successfully created"
    click_on "Back"
  end

  test "updating a Explc" do
    visit explcs_url
    click_on "Edit", match: :first

    fill_in "Additional conditions", with: @explc.additional_conditions
    fill_in "Amount", with: @explc.amount
    fill_in "Applicant", with: @explc.applicant
    fill_in "Available by", with: @explc.available_by
    fill_in "Available with", with: @explc.available_with
    fill_in "Beneficiary", with: @explc.beneficiary
    fill_in "Currency", with: @explc.currency
    fill_in "Documents required", with: @explc.documents_required
    fill_in "Drawee", with: @explc.drawee
    fill_in "Expiry date", with: @explc.expiry_date
    fill_in "Final destination", with: @explc.final_destination
    fill_in "Goods description", with: @explc.goods_description
    fill_in "Issue date", with: @explc.issue_date
    fill_in "Issuing bank", with: @explc.issuing_bank
    fill_in "Latest shipment date", with: @explc.latest_shipment_date
    fill_in "Lc number", with: @explc.lc_number
    fill_in "Partial shipment", with: @explc.partial_shipment
    fill_in "Port of discharge", with: @explc.port_of_discharge
    fill_in "Port of loading", with: @explc.port_of_loading
    fill_in "Remarks", with: @explc.remarks
    fill_in "Shipment from", with: @explc.shipment_from
    fill_in "Tenor", with: @explc.tenor
    fill_in "Transhipment", with: @explc.transhipment
    click_on "Update Explc"

    assert_text "Explc was successfully updated"
    click_on "Back"
  end

  test "destroying a Explc" do
    visit explcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Explc was successfully destroyed"
  end
end
