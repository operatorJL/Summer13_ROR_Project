class Category < ActiveRecord::Base
  has_many :foods
  validates_presence_of :name
  validates_length_of :name, :within => 1..20
end
