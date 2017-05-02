class AddFacebookToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :facebook, :string
  end
end
