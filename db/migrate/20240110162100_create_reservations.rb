class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :material
      t.string :site_location
      t.references :customer, null: false, foreign_key: true
      t.references :truck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
