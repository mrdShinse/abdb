# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :user
      t.string :book
      t.string :address
      t.datetime :start_at
      t.integer :status

      t.timestamps
    end
  end
end
