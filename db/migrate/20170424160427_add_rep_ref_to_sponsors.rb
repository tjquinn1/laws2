class AddRepRefToSponsors < ActiveRecord::Migration[5.0]
  def change
    add_reference :sponsors, :rep, foreign_key: true
  end
end
