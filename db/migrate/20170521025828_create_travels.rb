class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|

      t.string :title
      t.string :country
      t.integer :period
      t.integer :food
      t.integer :sleep
      t.integer :trans
      t.integer :free
      t.integer :total
      t.belongs_to :user
      t.timestamps
    end
  end
end
