class CreateReps < ActiveRecord::Migration[5.0]
  def change
    create_table :reps do |t|
      t.string :firstName
      t.string :lastName
      t.string :state
      t.string :chamber
      t.string :party
      t.integer :district
      t.string :streetAddress
      t.integer :zipcode
      t.string :stateAddress
      t.string :city
      t.integer :dateStart
      t.integer :dateEnd
      t.integer :congStart
      t.integer :congEnd

      t.timestamps
    end
  end
end
