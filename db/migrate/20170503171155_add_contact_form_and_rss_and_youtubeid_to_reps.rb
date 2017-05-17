class AddContactFormAndRssAndYoutubeidToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :contact, :string
    add_column :reps, :rss, :string
    add_column :reps, :youtubeid, :string
  end
end
