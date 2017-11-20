class AddImageColumnToTourItem < ActiveRecord::Migration[5.1]
  def change
    add_column :tour_items, :image, :string
  end
end
