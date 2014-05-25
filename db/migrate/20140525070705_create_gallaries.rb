class CreateGallaries < ActiveRecord::Migration
  def change
    create_table :gallaries do |t|
      t.string :name
      t.string :image1
      t.string :image2

      t.timestamps
    end
  end
end
