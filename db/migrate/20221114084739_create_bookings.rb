class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :homestay, null: false, foreign_key: true
      t.date :booking_start
      t.date :booking_end
      t.string :status
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
