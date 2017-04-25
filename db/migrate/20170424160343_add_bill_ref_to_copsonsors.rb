class AddBillRefToCopsonsors < ActiveRecord::Migration[5.0]
  def change
    add_reference :cosponsors, :bill, foreign_key: true
  end
end
