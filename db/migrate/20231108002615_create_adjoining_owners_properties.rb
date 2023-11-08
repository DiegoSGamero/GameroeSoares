class CreateAdjoiningOwnersProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :adjoining_owners_properties do |t|
      t.references :adjoining_owner, foreign_key: true
      t.references :property, foreign_key: true
      t.timestamps
    end
  end
end
