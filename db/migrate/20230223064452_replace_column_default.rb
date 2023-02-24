# frozen_string_literal: true

class ReplaceColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :recipes, :public, false
  end
end
