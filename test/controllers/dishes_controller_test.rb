require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish = dishes(:dish_one)
    @country = countries(:country_one)
  end

  test "should get index" do
    get country_dishes_url(@country)
    assert_response :success
  end

  test "should get new" do
    get new_country_dish_url(@country)
    assert_response :success
  end

  test "should create dish" do
    assert_difference('Dish.count') do
      post country_dishes_url(@country), params: { dish: { recipe: @dish.recipe, title: @dish.title } }
    end

    assert_redirected_to dish_url(Dish.last)
  end

  test "should show dish" do
    get dish_url(@dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_url(@dish)
    assert_response :success
  end

  test "should update dish" do
    patch dish_url(@dish), params: { dish: { recipe: @dish.recipe, title: @dish.title } }
    assert_redirected_to dish_url(@dish)
  end

  test "should destroy dish" do
    assert_difference('Dish.count', -1) do
      delete dish_url(@dish)
    end

    assert_redirected_to country_dishes_url
  end
end
