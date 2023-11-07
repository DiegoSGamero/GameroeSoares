class CreateAdjoiningOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :adjoining_owners do |t|
      t.string :full_name
      t.string :RG
      t.string :CPF_CNPJ
      t.string :fantasy_name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
