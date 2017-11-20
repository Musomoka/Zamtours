class CreateTourItems < ActiveRecord::Migration[5.1]
  def change
    create_table :tour_items do |t|
      t.string :title
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
