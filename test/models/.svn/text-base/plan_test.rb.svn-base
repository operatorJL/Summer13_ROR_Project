require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  should validate_presence_of(:protein)
  should validate_presence_of(:vegetable)
  should validate_presence_of(:fruit)
  should validate_presence_of(:starch)
  should validate_presence_of(:fat)
  should validate_presence_of(:snacks)
  should validate_presence_of(:water)
  should validate_numericality_of(:protein)
  should validate_numericality_of(:vegetable)
  should validate_numericality_of(:fruit)
  should validate_numericality_of(:starch)
  should validate_numericality_of(:fat)
  should validate_numericality_of(:snacks)
  should validate_numericality_of(:water)
  should ensure_inclusion_of(:protein).in_range(1..5)
  should ensure_inclusion_of(:vegetable).in_range(1..5)
  should ensure_inclusion_of(:fruit).in_range(1..5)
  should ensure_inclusion_of(:starch).in_range(1..5)
  should ensure_inclusion_of(:fat).in_range(1..5)
  should ensure_inclusion_of(:snacks).in_range(1..5)
  should ensure_inclusion_of(:water).in_range(1..200)
  
  should have_many(:users)
  
end
