class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user, index: true
      t.references :listing, index: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price_pernight
      t.integer :total_price

      t.timestamps null: false
    end
    add_foreign_key :reservations, :users
    add_foreign_key :reservations, :listings
  end
end
