class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :sex
      t.string :maritial_status
      t.string :contact
      t.text :Address

      t.timestamps
    end
  end
end
