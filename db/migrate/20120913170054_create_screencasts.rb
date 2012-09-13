class CreateScreencasts < ActiveRecord::Migration
  def change
    create_table :screencasts do |t|
      t.string :title
      t.text :description
      t.integer :company_id

      t.timestamps
    end
  end
end
