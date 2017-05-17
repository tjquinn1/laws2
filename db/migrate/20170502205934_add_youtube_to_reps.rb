class AddYoutubeToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :dob, :date
  end
end
