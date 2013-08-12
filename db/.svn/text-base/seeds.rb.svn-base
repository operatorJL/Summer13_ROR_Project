# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:first_name => "Joel", :last_name => "Loucks", :age => 26, :email => "joel@foodtracker.com", :current_weight => 160, :goal_weight => 155, :plan_id => 1, :password => 'password')
User.create!(:first_name => "Brandon", :last_name => "Mikeska", :age => 22, :email => "brandon@foodtracker.com", :current_weight => 250, :goal_weight => 150, :plan_id => 2, :password => 'password')
User.create!(:first_name => "Bugs", :last_name => "Bunny", :age => 55, :email => "wat_up_doc@foodtracker.com", :current_weight => 30, :goal_weight => 15, :plan_id => 1, :password => 'password')
User.create!(:first_name => "Daffy", :last_name => "Duck", :age => 54, :email => "wabbit_season@foodtracker.com", :current_weight => 15, :goal_weight => 10, :plan_id => 1, :password => 'password')

Plan.create!(name: "one",protein: 2,vegetable: 2, fruit: 2, starch: 2, fat: 1, snacks: 3, water: 80)
Plan.create!(name: "two",protein: 2,vegetable: 4, fruit: 2, starch: 2, fat: 1, snacks: 3, water: 88)
Plan.create!(name: "three",protein: 3,vegetable: 4, fruit: 3, starch: 2, fat: 1, snacks: 3, water: 88)


Category.create!(:name => "Protein")
Category.create!(:name => "Vegetables")
Category.create!(:name => "Fruit")
Category.create!(:name => "Starch")
Category.create!(:name => "Fats")
Category.create!(:name => "Snacks")


Food.create!(name: "chicken", portion: 7.5, user_id: 1, category_id: 1,unit: "oz")



