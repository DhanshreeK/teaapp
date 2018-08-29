class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.date :date
      t.string :morning_qty
      t.string :evening_qty
      t.string :total_qty
      t.string :final_total
      t.string :price
      t.string :total_price

      t.timestamps
    end
  end
end
