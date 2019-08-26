class AlterPlanetsAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :user_id, :integer
    add_index :planets, :user_id
  end
end
