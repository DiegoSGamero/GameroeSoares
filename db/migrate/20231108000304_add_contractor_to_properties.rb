class AddContractorToProperties < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :contractor, null: false, foreign_key: true
  end
end
