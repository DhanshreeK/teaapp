require 'test_helper'

class TeasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tea = teas(:one)
  end

  test "should get index" do
    get teas_url
    assert_response :success
  end

  test "should get new" do
    get new_tea_url
    assert_response :success
  end

  test "should create tea" do
    assert_difference('Tea.count') do
      post teas_url, params: { tea: { date: @tea.date, evening_qty: @tea.evening_qty, final_total: @tea.final_total, morning_qty: @tea.morning_qty, price: @tea.price, total_price: @tea.total_price, total_qty: @tea.total_qty } }
    end

    assert_redirected_to tea_url(Tea.last)
  end

  test "should show tea" do
    get tea_url(@tea)
    assert_response :success
  end

  test "should get edit" do
    get edit_tea_url(@tea)
    assert_response :success
  end

  test "should update tea" do
    patch tea_url(@tea), params: { tea: { date: @tea.date, evening_qty: @tea.evening_qty, final_total: @tea.final_total, morning_qty: @tea.morning_qty, price: @tea.price, total_price: @tea.total_price, total_qty: @tea.total_qty } }
    assert_redirected_to tea_url(@tea)
  end

  test "should destroy tea" do
    assert_difference('Tea.count', -1) do
      delete tea_url(@tea)
    end

    assert_redirected_to teas_url
  end
end
