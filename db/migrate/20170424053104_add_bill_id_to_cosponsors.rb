class AddBillIdToCosponsors < ActiveRecord::Migration[5.0]
  def change
    add_column :cosponsors, :bill_id, :integer
    add_index :cosponsors, :bill_id
  end
end
