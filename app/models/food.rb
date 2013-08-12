class Food < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates_presence_of :name, :portion, :user, :category, :unit  
  validates_uniqueness_of :name, :scope => [:portion, :unit]
  
  def self.get_units
    ['oz', 'fl. oz', 'tbsp','tsp','cup', 'whole','small','package']
  end
end
