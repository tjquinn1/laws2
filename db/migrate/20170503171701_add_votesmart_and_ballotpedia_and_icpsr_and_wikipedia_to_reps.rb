class AddVotesmartAndBallotpediaAndIcpsrAndWikipediaToReps < ActiveRecord::Migration[5.0]
  def change
    add_column :reps, :votesmart, :string
    add_column :reps, :ballotpedia, :string
    add_column :reps, :icpsr, :string
    add_column :reps, :wikipedia, :string
  end
end
