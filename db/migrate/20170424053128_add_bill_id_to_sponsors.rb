class AddBillIdToSponsors < ActiveRecord::Migration[5.0]
  def change
    add_column :sponsors, :bill_id, :integer
    add_index :sponsors, :bill_id
  end
end
