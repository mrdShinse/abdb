# frozen_string_literal: true

class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.references :event
      t.references :user

      t.timestamps
    end
  end
end
