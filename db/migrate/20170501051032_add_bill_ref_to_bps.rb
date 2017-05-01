class AddBillRefToBps < ActiveRecord::Migration[5.0]
  def change
    add_reference :bps, :bill, foreign_key: true
  end
end
