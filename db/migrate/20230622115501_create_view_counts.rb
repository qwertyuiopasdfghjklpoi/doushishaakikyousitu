# frozen_string_literal: true

class CreateViewCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :view_counts do |t|
      t.integer :index_id

      t.timestamps
    end
  end
end
