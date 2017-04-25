class RemoveBillIdFromSponsors < ActiveRecord::Migration[5.0]
  def change
    remove_column :sponsors, :bill_id, :integer
  end
end
