class RemoveQuantityFromOrderables < ActiveRecord::Migration[7.1]
  def change
    remove_column :orderables, :quantity, :integer
    add_column :orderables, :quant, :integer
  end
end
