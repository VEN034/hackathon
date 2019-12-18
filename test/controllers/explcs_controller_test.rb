require 'test_helper'

class ExplcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @explc = explcs(:one)
  end

  test "should get index" do
    get explcs_url
    assert_response :success
  end

  test "should get new" do
    get new_explc_url
    assert_response :success
  end

  test "should create explc" do
    assert_difference('Explc.count') do
      post explcs_url, params: { explc: { additional_conditions: @explc.additional_conditions, amount: @explc.amount, applicant: @explc.applicant, available_by: @explc.available_by, available_with: @explc.available_with, beneficiary: @explc.beneficiary, currency: @explc.currency, documents_required: @explc.documents_required, drawee: @explc.drawee, expiry_date: @explc.expiry_date, final_destination: @explc.final_destination, goods_description: @explc.goods_description, issue_date: @explc.issue_date, issuing_bank: @explc.issuing_bank, latest_shipment_date: @explc.latest_shipment_date, lc_number: @explc.lc_number, partial_shipment: @explc.partial_shipment, port_of_discharge: @explc.port_of_discharge, port_of_loading: @explc.port_of_loading, remarks: @explc.remarks, shipment_from: @explc.shipment_from, tenor: @explc.tenor, transhipment: @explc.transhipment } }
    end

    assert_redirected_to explc_url(Explc.last)
  end

  test "should show explc" do
    get explc_url(@explc)
    assert_response :success
  end

  test "should get edit" do
    get edit_explc_url(@explc)
    assert_response :success
  end

  test "should update explc" do
    patch explc_url(@explc), params: { explc: { additional_conditions: @explc.additional_conditions, amount: @explc.amount, applicant: @explc.applicant, available_by: @explc.available_by, available_with: @explc.available_with, beneficiary: @explc.beneficiary, currency: @explc.currency, documents_required: @explc.documents_required, drawee: @explc.drawee, expiry_date: @explc.expiry_date, final_destination: @explc.final_destination, goods_description: @explc.goods_description, issue_date: @explc.issue_date, issuing_bank: @explc.issuing_bank, latest_shipment_date: @explc.latest_shipment_date, lc_number: @explc.lc_number, partial_shipment: @explc.partial_shipment, port_of_discharge: @explc.port_of_discharge, port_of_loading: @explc.port_of_loading, remarks: @explc.remarks, shipment_from: @explc.shipment_from, tenor: @explc.tenor, transhipment: @explc.transhipment } }
    assert_redirected_to explc_url(@explc)
  end

  test "should destroy explc" do
    assert_difference('Explc.count', -1) do
      delete explc_url(@explc)
    end

    assert_redirected_to explcs_url
  end
end
