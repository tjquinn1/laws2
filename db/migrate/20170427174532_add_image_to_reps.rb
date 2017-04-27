class AddImageToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :image, :string
  end
end
