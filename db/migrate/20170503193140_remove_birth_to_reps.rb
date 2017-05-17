class RemoveBirthToReps < ActiveRecord::Migration[5.0]
  def change
    remove_column :reps, :district, :integer
  end
end
