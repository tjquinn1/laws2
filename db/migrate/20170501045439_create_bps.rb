class CreateBps < ActiveRecord::Migration[5.0]
  def change
    create_table :bps do |t|
      t.text :point

      t.timestamps
    end
  end
end
