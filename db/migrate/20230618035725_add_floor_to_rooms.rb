# frozen_string_literal: true

class AddFloorToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :floor, :integer
  end
end
