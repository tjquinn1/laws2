class AddRepIdToSponsors < ActiveRecord::Migration[5.0]
  def change
    add_column :sponsors, :rep_id, :integer
    add_index :sponsors, :rep_id
  end
end
