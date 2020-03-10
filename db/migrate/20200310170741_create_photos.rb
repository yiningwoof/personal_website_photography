class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :category
      t.string :location
      t.integer :year

      t.timestamps
    end
  end
end
