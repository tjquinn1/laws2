class RemoveRepIdFromSponsors < ActiveRecord::Migration[5.0]
  def change
    remove_column :sponsors, :rep_id, :integer
  end
end
