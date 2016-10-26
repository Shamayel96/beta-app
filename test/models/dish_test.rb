require 'test_helper'

class DishTest < ActiveSupport::TestCase
  test "dishes must have a title" do
    dish = Dish.new(description: "I have no title")
    assert dish.invalid?, "item should not be valid without a title"
  end
end
