class RemoveRefToBps < ActiveRecord::Migration[5.0]
  def change
    remove_reference :bps, :bps, index: true, foreign_key: true
  end
end
