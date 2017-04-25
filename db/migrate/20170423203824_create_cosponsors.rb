class CreateCosponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :cosponsors do |t|

      t.timestamps
    end
  end
end
