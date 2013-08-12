require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
   should validate_presence_of(:name)
   should have_many(:foods)
   should ensure_length_of(:name).is_at_least(1).is_at_most(20)
end
