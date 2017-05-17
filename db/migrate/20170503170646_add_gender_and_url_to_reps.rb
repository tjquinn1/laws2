class AddGenderAndUrlToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :gender, :string
    add_column :reps, :url, :string
    add_column :reps, :phone, :string
  end
end
