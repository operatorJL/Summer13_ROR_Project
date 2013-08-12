class Plan < ActiveRecord::Base
  has_many :users
  validates_presence_of :protein, :vegetable, :fruit, :starch, :fat, :snacks, :water
  validates_numericality_of :protein, :vegetable, :fruit, :starch, :fat, :snacks, :water
  validates :protein, :vegetable, :fruit, :starch, :fat, :snacks, :inclusion => 1..5
  validates :water, :inclusion => 1..200
end
