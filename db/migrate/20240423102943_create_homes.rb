class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :area
      t.string :taste
      t.string :price
      t.string :grind
      t.string :repeat
      t.integer :overall
      t.integer :level

      t.timestamps
    end
  end
end
