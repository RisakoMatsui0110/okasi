class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :area
      t.string :price
      t.string :grind
      t.string :taste
      t.string :repeat

      t.timestamps
    end
  end
end
