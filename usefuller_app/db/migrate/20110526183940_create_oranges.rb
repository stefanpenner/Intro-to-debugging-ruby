class CreateOranges < ActiveRecord::Migration
  def change
    create_table :oranges do |t|
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
