class AddNameToHome < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :name, :string
  end
end
