class FixColumnName < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :tour_items, :type, :category
  end

  def self.down
    rename_column :tour_items, :category, :type
  end
end
