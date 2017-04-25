class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.text :summary
      t.string :billNumber
      t.date :propDate

      t.timestamps
    end
  end
end
