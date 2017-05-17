class AddBioguideAndThomasAndOpensecretToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :bioguide, :string
    add_column :reps, :thomas, :string
    add_column :reps, :opensecret, :string
  end
end
