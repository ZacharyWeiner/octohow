class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :picture
      t.integer :index

      t.timestamps
    end
  end
end
