class AddYoutubeToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :youtube, :string
  end
end
