class AddBillRefToSponsors < ActiveRecord::Migration[5.0]
  def change
    add_reference :sponsors, :bill, foreign_key: true
  end
end
