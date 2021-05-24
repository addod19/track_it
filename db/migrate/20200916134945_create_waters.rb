# frozen_string_literal: true

class CreateWaters < ActiveRecord::Migration[6.0]
  def change
    create_table :waters do |t|
      t.integer :amount
      t.integer :total

      t.timestamps
    end
  end
end
