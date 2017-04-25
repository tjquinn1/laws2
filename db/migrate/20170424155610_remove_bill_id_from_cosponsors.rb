class RemoveBillIdFromCosponsors < ActiveRecord::Migration[5.0]
  def change
    remove_column :cosponsors, :bill_id, :integer
  end
end
