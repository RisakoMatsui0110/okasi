class CreateBeans < ActiveRecord::Migration[6.1]
  def change
    create_table :beans do |t|
      t.string :area
      t.text :url
      t.string :taste
      t.string :price
      t.string :grind
      t.integer :overall
      t.integer :level

      t.timestamps
    end
  end
end
