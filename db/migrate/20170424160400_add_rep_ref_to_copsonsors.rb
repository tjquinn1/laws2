class AddRepRefToCopsonsors < ActiveRecord::Migration[5.0]
  def change
    add_reference :cosponsors, :rep, foreign_key: true
  end
end
