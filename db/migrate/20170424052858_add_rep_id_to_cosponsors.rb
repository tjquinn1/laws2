class AddRepIdToCosponsors < ActiveRecord::Migration[5.0]
  def change
    add_column :cosponsors, :rep_id, :integer
    add_index :cosponsors, :rep_id
  end
end
