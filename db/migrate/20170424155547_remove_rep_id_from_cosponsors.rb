class RemoveRepIdFromCosponsors < ActiveRecord::Migration[5.0]
  def change
    remove_column :cosponsors, :rep_id, :integer
  end
end
