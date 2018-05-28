class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :book
      t.string :address
      t.datetime :start_at
      t.string :members
      t.string :allocation
      t.integer :status

      t.timestamps
    end
  end
end
