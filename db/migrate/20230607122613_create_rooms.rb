# frozen_string_literal: true

class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :week
      t.integer :time
      t.string :mansion
      t.string :classroom
      t.string :aiteru
      t.text :post

      t.timestamps
    end
  end
end
