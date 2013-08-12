require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_many(:foods)
  should belong_to(:plan)
  should validate_presence_of(:first_name)
  should validate_presence_of(:age)
  should validate_presence_of(:last_name)
  should validate_presence_of(:current_weight)
  should validate_presence_of(:goal_weight)
  should validate_presence_of(:email)
  should validate_presence_of(:password)
  should ensure_length_of(:first_name).is_at_least(1).is_at_most(30)
  should ensure_length_of(:last_name).is_at_least(1).is_at_most(30)
  should validate_numericality_of(:age)
  should validate_uniqueness_of(:email)
end
 