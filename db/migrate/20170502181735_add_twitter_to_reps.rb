class AddTwitterToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :twitter, :string
  end
end
