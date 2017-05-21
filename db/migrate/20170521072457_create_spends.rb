class CreateSpends < ActiveRecord::Migration[5.0]
  def change
    create_table :spends do |t|

      t.integer :day
      t.integer :food
      t.integer :sleep
      t.integer :trans
      t.integer :free
      t.integer :total
      t.belongs_to :travel
      t.timestamps
    end
  end
end
