class AddDistrictToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :district, :string
  end
end
