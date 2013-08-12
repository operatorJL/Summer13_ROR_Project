require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:category)
  should validate_presence_of(:name)
  should validate_presence_of(:portion)
  should validate_presence_of(:user)
  should validate_presence_of(:category)
  should validate_presence_of(:unit)
  should validate_uniqueness_of(:name).scoped_to(:portion,:unit)
  
  test "get units should return an array" do
    assert_kind_of Array, Food.get_units
  end
end
