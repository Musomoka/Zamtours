require 'test_helper'

class TourItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour_item = tour_items(:one)
  end

  test "should get index" do
    get tour_items_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_item_url
    assert_response :success
  end

  test "should create tour_item" do
    assert_difference('TourItem.count') do
      post tour_items_url, params: { tour_item: { description: @tour_item.description, title: @tour_item.title, type: @tour_item.type } }
    end

    assert_redirected_to tour_item_url(TourItem.last)
  end

  test "should show tour_item" do
    get tour_item_url(@tour_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_item_url(@tour_item)
    assert_response :success
  end

  test "should update tour_item" do
    patch tour_item_url(@tour_item), params: { tour_item: { description: @tour_item.description, title: @tour_item.title, type: @tour_item.type } }
    assert_redirected_to tour_item_url(@tour_item)
  end

  test "should destroy tour_item" do
    assert_difference('TourItem.count', -1) do
      delete tour_item_url(@tour_item)
    end

    assert_redirected_to tour_items_url
  end
end
