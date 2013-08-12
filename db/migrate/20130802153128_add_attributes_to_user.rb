class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :current_weight, :float
    add_column :users, :goal_weight, :float
    add_column :users, :plan_id, :integer
  end
end
