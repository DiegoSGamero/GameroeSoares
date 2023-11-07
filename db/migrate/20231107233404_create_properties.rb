class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.float :size
      t.string :registration_number
      t.string :limit_type

      t.timestamps
    end
  end
end
