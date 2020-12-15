class CreateCargos < ActiveRecord::Migration[6.0]
  def change
    create_table :cargos do |t|
      t.string :title
      t.string :pick_up_address
      t.string :drop_off_address
      t.datetime :pick_up_datetime
      t.datetime :drop_off_datetime
      t.string :truck_type
      t.text :goods
      t.text :details
      t.integer :status, index: true
      t.integer :weight
      t.integer :volume

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
