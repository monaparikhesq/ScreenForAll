class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :stars
      t.integer :screencast_id
      t.integer :user_id

      t.timestamps
    end
  end
end
