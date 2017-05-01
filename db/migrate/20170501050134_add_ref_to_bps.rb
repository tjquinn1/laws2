class AddRefToBps < ActiveRecord::Migration[5.0]
  def change
    add_reference :bps, :bps, foreign_key: true
  end
end
