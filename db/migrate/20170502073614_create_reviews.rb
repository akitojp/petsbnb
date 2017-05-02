class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rate
      t.references :listing, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :listings
    add_foreign_key :reviews, :users
    
  end
end
