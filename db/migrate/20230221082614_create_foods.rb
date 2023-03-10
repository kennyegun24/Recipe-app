# frozen_string_literal: true

class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.decimal :measuerment_unit

      t.timestamps
    end
  end
end
