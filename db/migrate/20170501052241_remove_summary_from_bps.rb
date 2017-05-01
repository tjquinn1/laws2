class RemoveSummaryFromBps < ActiveRecord::Migration[5.0]
  def change
    remove_column :bills, :summary, :integer
  end
end
