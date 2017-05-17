class AddLisAndCspanAndGovtrackToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :lis, :string
    add_column :reps, :cspan, :string
    add_column :reps, :govtrack, :string
  end
end
