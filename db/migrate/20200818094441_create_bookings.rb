class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :time_start
      t.date :time_end
      t.integer :calculated_price
      t.references :user, null: false, foreign_key: true
      t.references :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
