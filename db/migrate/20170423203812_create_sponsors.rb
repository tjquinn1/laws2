class CreateSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsors do |t|

      t.timestamps
    end
  end
end
