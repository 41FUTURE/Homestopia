class CreateHomestays < ActiveRecord::Migration[7.0]
  def change
    create_table :homestays do |t|
      t.integer :number_of_users
      t.string :comments
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.text :family_description
      t.string :accomodation
      t.string :address
      t.boolean :availability

      t.timestamps
    end
  end
end
