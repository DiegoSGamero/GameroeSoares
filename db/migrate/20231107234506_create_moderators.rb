class CreateModerators < ActiveRecord::Migration[7.0]
  def change
    create_table :moderators do |t|
      t.string :full_name
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
