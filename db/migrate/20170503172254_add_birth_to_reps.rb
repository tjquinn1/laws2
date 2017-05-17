class AddBirthToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :dob, :string
  end
end
