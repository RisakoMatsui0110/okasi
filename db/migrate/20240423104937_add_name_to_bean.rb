class AddNameToBean < ActiveRecord::Migration[6.1]
  def change
    add_column :beans, :name, :string
  end
end
