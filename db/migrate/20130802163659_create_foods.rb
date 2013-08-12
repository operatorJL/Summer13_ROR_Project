class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.float :portion
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
