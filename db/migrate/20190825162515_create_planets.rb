class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
    add_index :planets, :user_id
  end
end
