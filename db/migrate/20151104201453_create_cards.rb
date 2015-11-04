class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :card_number
      t.string :card_type
      t.integer :expire_mo
      t.integer :expire_yr
      t.decimal :balance

      t.timestamps null: false
    end
  end
end
